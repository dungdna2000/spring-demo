package com.dungdinh.springdemo;

import jakarta.persistence.metamodel.SingularAttribute;
import jakarta.persistence.metamodel.StaticMetamodel;
import javax.annotation.processing.Generated;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(PlayerCard.class)
public abstract class PlayerCard_ {

	public static volatile SingularAttribute<PlayerCard, Integer> isSurvivor;
	public static volatile SingularAttribute<PlayerCard, Integer> cost;
	public static volatile SingularAttribute<PlayerCard, Integer> isRogue;
	public static volatile SingularAttribute<PlayerCard, Integer> level;
	public static volatile SingularAttribute<PlayerCard, Integer> isSeeker;
	public static volatile SingularAttribute<PlayerCard, Integer> subType;
	public static volatile SingularAttribute<PlayerCard, Integer> id;
	public static volatile SingularAttribute<PlayerCard, Integer> isMystic;
	public static volatile SingularAttribute<PlayerCard, Card> card;
	public static volatile SingularAttribute<PlayerCard, Integer> isGuardian;
	public static volatile SingularAttribute<PlayerCard, Integer> isWeakness;

	public static final String IS_SURVIVOR = "isSurvivor";
	public static final String COST = "cost";
	public static final String IS_ROGUE = "isRogue";
	public static final String LEVEL = "level";
	public static final String IS_SEEKER = "isSeeker";
	public static final String SUB_TYPE = "subType";
	public static final String ID = "id";
	public static final String IS_MYSTIC = "isMystic";
	public static final String CARD = "card";
	public static final String IS_GUARDIAN = "isGuardian";
	public static final String IS_WEAKNESS = "isWeakness";

}

