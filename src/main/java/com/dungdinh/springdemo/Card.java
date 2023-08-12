package com.dungdinh.springdemo;

import java.io.Serializable;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.OneToOne;

@Entity
@Table(name="card")
public class Card implements Serializable {

	private static final long serialVersionUID = -7412246526793693783L;
	
	@Id
    @Column(name="id")
	protected int id;
	public int getId() { return id; }
	public void setId(int v) { id = v; }

    @Column(name="set_id")
	protected int setId;
	public int getSetId() { return setId; }
	public void setSetId(int v) { setId = v; }

    @Column(name="category")
	protected int category;
	public int getCardType() { return category; }
	public void setCardType(int v) { category = v; }
	
    @Column(name="title")    
	protected String title;
	public String getTitle() { return title; }
	public void setTitle(String v) { title = v; } 
   
    @Column(name="front_url")
	protected String frontUrl;
	public String getFrontUrl() { return frontUrl; }
	public void setFrontUrl(String v) { frontUrl = v; }    

    @Column(name="back_url")
	protected String backUrl;
	public String getBackUrl() { return backUrl; }
	public void setBackUrl(String v) { backUrl = v; }    
	
	@OneToOne(mappedBy = "card", cascade = CascadeType.ALL)
	private PlayerCard playerCard;
	
	public Card() {}
	public Card(int id, String title, int setId, int category, String frontUrl, String backUrl) {
		super();
		this.id = id;
		this.setId = setId;
		this.title = title;
		this.category = category;
		this.frontUrl = frontUrl;
		this.backUrl = backUrl;		
	}
}
