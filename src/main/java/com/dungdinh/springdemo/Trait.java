package com.dungdinh.springdemo;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="trait")
public class Trait {

	@Id
	@Column(name="id")
	protected int id; 
	public int getId() { return id; }
	public void setId(int v) { id = v; }

	
	@Column(name="trait_name")
	protected String name; 
	public String getName() { return name; }
	public void setName(String v) { name = v; }
	
}
