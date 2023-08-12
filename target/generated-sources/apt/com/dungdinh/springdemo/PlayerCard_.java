package com.dungdinh.springdemo;

import jakarta.persistence.metamodel.SingularAttribute;
import jakarta.persistence.metamodel.StaticMetamodel;
import javax.annotation.processing.Generated;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(PlayerCard.class)
public abstract class PlayerCard_ {

	public static volatile SingularAttribute<PlayerCard, Integer> is_survivor;
	public static volatile SingularAttribute<PlayerCard, Integer> cost;
	public static volatile SingularAttribute<PlayerCard, Integer> is_mystic;
	public static volatile SingularAttribute<PlayerCard, Integer> sub_type;
	public static volatile SingularAttribute<PlayerCard, Integer> is_guardian;
	public static volatile SingularAttribute<PlayerCard, Integer> id;
	public static volatile SingularAttribute<PlayerCard, Integer> slot;
	public static volatile SingularAttribute<PlayerCard, CardBase> card_base;
	public static volatile SingularAttribute<PlayerCard, Integer> exp;
	public static volatile SingularAttribute<PlayerCard, Integer> is_seeker;
	public static volatile SingularAttribute<PlayerCard, Integer> is_rouge;

	public static final String IS_SURVIVOR = "is_survivor";
	public static final String COST = "cost";
	public static final String IS_MYSTIC = "is_mystic";
	public static final String SUB_TYPE = "sub_type";
	public static final String IS_GUARDIAN = "is_guardian";
	public static final String ID = "id";
	public static final String SLOT = "slot";
	public static final String CARD_BASE = "card_base";
	public static final String EXP = "exp";
	public static final String IS_SEEKER = "is_seeker";
	public static final String IS_ROUGE = "is_rouge";

}

