package com.dungdinh.springdemo;

import java.util.ArrayList;
import java.util.List;


import org.hibernate.Session;
import org.hibernate.Transaction;

import jakarta.persistence.criteria.Root;
import jakarta.persistence.criteria.Subquery;
import jakarta.persistence.criteria.CriteriaBuilder;
import jakarta.persistence.criteria.CriteriaQuery;
import jakarta.persistence.criteria.Join;
import jakarta.persistence.criteria.JoinType;
import jakarta.persistence.criteria.Predicate;
import jakarta.persistence.TypedQuery;


public class CardDAO {
	
    public List < PlayerCard > getAllCards() {

        Transaction transaction = null;
        List < PlayerCard > listOfCards = null;
        
        Session session = HibernateUtils.getSessionFactory().openSession();
        transaction = session.beginTransaction();
        
        listOfCards = session.createQuery("FROM PlayerCard", PlayerCard.class).getResultList();
        
        transaction.commit();
        
        return listOfCards;
    }
    
    /*
     *  Get list of traits order alphabetically 
     */
    public List < Trait > getAllTraits() {

        Transaction transaction = null;
        List < Trait > traits = null;
        
        Session session = HibernateUtils.getSessionFactory().openSession();
        transaction = session.beginTransaction();
        
        traits = session.createQuery("FROM Trait ORDER BY name", Trait.class).getResultList();
        
        transaction.commit();
        
        return traits;
    }   
    
    private Predicate generateInvestigatorClassPredicate(frmSearchCards frm, CriteriaBuilder cb, Root<PlayerCard> root) {

        ArrayList<Predicate> pClasses = new ArrayList<Predicate>();
        
        
        if (frm.getIsGuardian()==1)
        	 pClasses.add(cb.equal(root.get("isGuardian"), 1));        
        if (frm.getIsSeeker()==1)
       	 	pClasses.add(cb.equal(root.get("isSeeker"), 1));
        if (frm.getIsRogue()==1)
        	pClasses.add(cb.equal(root.get("isRogue"), 1));
        if (frm.getIsMystic()==1)
        	pClasses.add(cb.equal(root.get("isMystic"), 1));
        if (frm.getIsSurvivor()==1)
        	pClasses.add(cb.equal(root.get("isSurvivor"), 1));

        if (frm.getIsWeakness()==1)
        	pClasses.add(cb.equal(root.get("isWeakness"), 1));
  
        if (frm.getIsNeutral() == 1) {
            Predicate pNeutral = 
            		cb.and(
            				cb.equal(root.get("isGuardian"), 0), 
            				cb.equal(root.get("isSeeker"), 0),
            				cb.equal(root.get("isMystic"), 0),
            				cb.equal(root.get("isRogue"), 0),
            				cb.equal(root.get("isSurvivor"), 0),
            				
            				//
            				// All weakness cards are neutral by default, so we need to eliminate them if user only wants to show real neutral cards
            				//
            				cb.equal(root.get("isWeakness"), 0)				
            				);
            pClasses.add(pNeutral);
        }
        
        Predicate pClass = cb.or(); // pClass = false , if nothing is selected, the result should be empty 
        if (pClasses.size()>0)
        {
        	pClass = pClasses.get(0);
        	for (int i=1;i<pClasses.size();i++)
        		pClass = cb.or(pClasses.get(i), pClass);
        
        }        
        
        return pClass;
    }
    
    public List < PlayerCard > searchCards(frmSearchCards frm) {

        System.out.println("BEGIN CardDAO::searchCards()");
    	
    	
        Transaction transaction = null;
        List < PlayerCard > listOfCards = null;
        
        Session session = HibernateUtils.getSessionFactory().openSession();
        transaction = session.beginTransaction();

        //////////////// USING HQL //////////////////////// 
        /*
        Query<PlayerCard> q = session.createQuery("FROM PlayerCard p INNER JOIN CardBase c ON p.Id = c.Id WHERE title LIKE :title", PlayerCard.class);
        q.setParameter("title", "%" + frm.getTitle() + "%");
        //q.setParameter("is_g", frm.getIsGuardian());
        listOfCards = q.getResultList();        
        */
        
        //////////////// CRITERIA BUILDER ////////////////////////
        CriteriaBuilder cb = session.getCriteriaBuilder();
        CriteriaQuery<PlayerCard> cr = cb.createQuery(PlayerCard.class);
        Root<PlayerCard> root = cr.from(PlayerCard.class);
        
        // DO NOT DELETE - it is good for JOIN only , not FETCH 
        //Join<PlayerCard, CardBase> jPlayerCard_CardBase = root.join(PlayerCard_.card_base);
        
        
        root.fetch("card");
        root.fetch("traits", JoinType.LEFT);

        System.out.println("[INFO] frmSearchCards: \n" + frm.toString());
        
        ArrayList<Predicate> preds = new ArrayList<Predicate>();
        
        // Generate predicates for investigator's class filter 
        Predicate pClass = generateInvestigatorClassPredicate(frm,cb,root);
        if (pClass != null)
        	preds.add(pClass);        	

        // AND title LIKE %frm.title% 
        if (frm.getTitle()!=null && !frm.getTitle().trim().isEmpty()) {
        	preds.add(cb.like(root.get("card").get("title"), "%"+frm.getTitle()+"%"));
        }
        
        // AND cost = frm.cost 
        if (frm.getCost() >= 0) {
        	preds.add(cb.equal(root.get("cost"), frm.getCost()));
        }
        
        // AND frm.trait IN traits 
        if (frm.getTraitId()>0) {
        	
        	Subquery<Integer> sub = cr.subquery(Integer.class);
        	Root<PlayerCard> subRoot = sub.from(PlayerCard.class);
            subRoot.fetch("traits");
            
        	sub.select(subRoot.get("id"));
        	
        	// WHERE trait_id = frm.traitId 
            sub.where(
            			cb.equal(
            					subRoot.get("traits").get("id"),
            					frm.getTraitId()
            			)
            		);

            
            preds.add(
            			cb.in(root.get("id")).value(sub) // id IN sub-query 
            		);
        }
        
        
        
        //// convert ArrayList<Predicate> to Predicate[]
        Predicate predicates[] = preds.toArray(new Predicate[0]); 

        cr.select(root).where(predicates);
        
        TypedQuery<PlayerCard> q = session.createQuery(cr);
        listOfCards = q.getResultList();        
        
        transaction.commit();        
        
        System.out.println("END CardDAO::searchCards()");
        
        return listOfCards;
        
    }    
}
