package com.dungdinh.springdemo;

import jakarta.persistence.metamodel.SingularAttribute;
import jakarta.persistence.metamodel.StaticMetamodel;
import javax.annotation.processing.Generated;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(CardBase.class)
public abstract class CardBase_ {

	public static volatile SingularAttribute<CardBase, PlayerCard> player_card;
	public static volatile SingularAttribute<CardBase, String> back_url;
	public static volatile SingularAttribute<CardBase, Integer> set_id;
	public static volatile SingularAttribute<CardBase, Integer> id;
	public static volatile SingularAttribute<CardBase, String> front_url;
	public static volatile SingularAttribute<CardBase, Integer> card_type;
	public static volatile SingularAttribute<CardBase, String> title;

	public static final String PLAYER_CARD = "player_card";
	public static final String BACK_URL = "back_url";
	public static final String SET_ID = "set_id";
	public static final String ID = "id";
	public static final String FRONT_URL = "front_url";
	public static final String CARD_TYPE = "card_type";
	public static final String TITLE = "title";

}

