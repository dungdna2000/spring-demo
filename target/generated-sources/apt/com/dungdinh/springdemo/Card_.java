package com.dungdinh.springdemo;

import jakarta.persistence.metamodel.SingularAttribute;
import jakarta.persistence.metamodel.StaticMetamodel;
import javax.annotation.processing.Generated;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Card.class)
public abstract class Card_ {

	public static volatile SingularAttribute<Card, String> backUrl;
	public static volatile SingularAttribute<Card, PlayerCard> playerCard;
	public static volatile SingularAttribute<Card, Integer> setId;
	public static volatile SingularAttribute<Card, String> frontUrl;
	public static volatile SingularAttribute<Card, Integer> id;
	public static volatile SingularAttribute<Card, Integer> category;
	public static volatile SingularAttribute<Card, String> title;

	public static final String BACK_URL = "backUrl";
	public static final String PLAYER_CARD = "playerCard";
	public static final String SET_ID = "setId";
	public static final String FRONT_URL = "frontUrl";
	public static final String ID = "id";
	public static final String CATEGORY = "category";
	public static final String TITLE = "title";

}

