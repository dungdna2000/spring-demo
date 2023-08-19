package com.dungdinh.springdemo;

import jakarta.persistence.metamodel.SetAttribute;
import jakarta.persistence.metamodel.SingularAttribute;
import jakarta.persistence.metamodel.StaticMetamodel;
import javax.annotation.processing.Generated;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(PlayerCard.class)
public abstract class PlayerCard_ {

	public static volatile SingularAttribute<PlayerCard, Integer> cost;
	public static volatile SetAttribute<PlayerCard, Trait> traits;
	public static volatile SingularAttribute<PlayerCard, Integer> level;
	public static volatile SingularAttribute<PlayerCard, Integer> isSeeker;
	public static volatile SingularAttribute<PlayerCard, Integer> numCombat;
	public static volatile SingularAttribute<PlayerCard, Integer> numWillPower;
	public static volatile SingularAttribute<PlayerCard, Integer> numWild;
	public static volatile SingularAttribute<PlayerCard, Integer> isWeakness;
	public static volatile SingularAttribute<PlayerCard, Integer> numIntellect;
	public static volatile SingularAttribute<PlayerCard, Integer> isSurvivor;
	public static volatile SingularAttribute<PlayerCard, Integer> isRogue;
	public static volatile SingularAttribute<PlayerCard, Integer> numAgility;
	public static volatile SingularAttribute<PlayerCard, Integer> subType;
	public static volatile SingularAttribute<PlayerCard, Integer> id;
	public static volatile SingularAttribute<PlayerCard, Integer> isMystic;
	public static volatile SingularAttribute<PlayerCard, Card> card;
	public static volatile SingularAttribute<PlayerCard, Integer> isGuardian;

	public static final String COST = "cost";
	public static final String TRAITS = "traits";
	public static final String LEVEL = "level";
	public static final String IS_SEEKER = "isSeeker";
	public static final String NUM_COMBAT = "numCombat";
	public static final String NUM_WILL_POWER = "numWillPower";
	public static final String NUM_WILD = "numWild";
	public static final String IS_WEAKNESS = "isWeakness";
	public static final String NUM_INTELLECT = "numIntellect";
	public static final String IS_SURVIVOR = "isSurvivor";
	public static final String IS_ROGUE = "isRogue";
	public static final String NUM_AGILITY = "numAgility";
	public static final String SUB_TYPE = "subType";
	public static final String ID = "id";
	public static final String IS_MYSTIC = "isMystic";
	public static final String CARD = "card";
	public static final String IS_GUARDIAN = "isGuardian";

}

