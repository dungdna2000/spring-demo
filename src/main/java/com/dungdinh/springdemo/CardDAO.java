package com.dungdinh.springdemo;

import java.util.ArrayList;
import java.util.List;


import org.hibernate.Session;
import org.hibernate.Transaction;

import jakarta.persistence.criteria.Root;
import jakarta.persistence.criteria.CriteriaBuilder;
import jakarta.persistence.criteria.CriteriaQuery;
import jakarta.persistence.criteria.Join;
import jakarta.persistence.criteria.Predicate;
import jakarta.persistence.TypedQuery;


public class CardDAO {
	public CardBase getCard(int id) {

        Transaction transaction = null;
        CardBase c = null;
        
        Session session = HibernateUtils.getSessionFactory().openSession();
        transaction = session.beginTransaction();
            
        c = session.get(CardBase.class, id);

        transaction.commit();
        return c;
    }
	
    public List < PlayerCard > getAllCards() {

        Transaction transaction = null;
        List < PlayerCard > listOfCards = null;
        
        Session session = HibernateUtils.getSessionFactory().openSession();
        transaction = session.beginTransaction();
        
        listOfCards = session.createQuery("FROM PlayerCard", PlayerCard.class).getResultList();
        
        transaction.commit();
        
        return listOfCards;
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
        //Join<PlayerCard, CardBase> jPlayerCard_CardBase = root.join(PlayerCard_.card_base);
        root.fetch("card_base");
        //cr.select(root);

        System.out.println("[INFO] Form:  " + frm.toString());
        
        ArrayList<Predicate> preds = new ArrayList<Predicate>();
        
        // Generate predicates for investigator's class filter 
        
        ArrayList<Predicate> pClasses = new ArrayList<Predicate>();
        
        
        if (frm.getIsGuardian()==1)
        	 pClasses.add(cb.equal(root.get("is_guardian"), frm.getIsGuardian()));        
        if (frm.getIsSeeker()==1)
       	 	pClasses.add(cb.equal(root.get("is_seeker"), frm.getIsSeeker()));
        if (frm.getIsRouge()==1)
        	pClasses.add(cb.equal(root.get("is_rouge"), frm.getIsRouge()));
        if (frm.getIsMystic()==1)
        	pClasses.add(cb.equal(root.get("is_mystic"), frm.getIsMystic()));
        if (frm.getIsSurvivor()==1)
        	pClasses.add(cb.equal(root.get("is_survivor"), frm.getIsSurvivor()));

        Predicate pClass = null;
        if (pClasses.size()>0)
        {
        	pClass = pClasses.get(0);
        	for (int i=1;i<pClasses.size();i++)
        		pClass = cb.or(pClasses.get(i), pClass);
        
        	preds.add(pClass);
        }
        
        // End of generating investigator's class predicates 

        // AND title LIKE %frm.title% 
        if (frm.getTitle()!=null && !frm.getTitle().trim().isEmpty()) {
        	preds.add(cb.like(root.get("card_base").get("title"), "%"+frm.getTitle()+"%"));
        }
        
        // AND cost = frm.cost 
        if (frm.getCost() >= 0) {
        	preds.add(cb.equal(root.get("cost"), frm.getCost()));
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
