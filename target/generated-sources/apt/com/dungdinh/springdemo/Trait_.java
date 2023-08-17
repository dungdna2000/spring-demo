package com.dungdinh.springdemo;

import jakarta.persistence.metamodel.SingularAttribute;
import jakarta.persistence.metamodel.StaticMetamodel;
import javax.annotation.processing.Generated;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Trait.class)
public abstract class Trait_ {

	public static volatile SingularAttribute<Trait, String> name;
	public static volatile SingularAttribute<Trait, Integer> id;

	public static final String NAME = "name";
	public static final String ID = "id";

}

