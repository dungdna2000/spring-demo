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
public class CardBase implements Serializable {

	private static final long serialVersionUID = -7412246526793693783L;
	
	@Id
    @Column(name="id")
	protected int id;
	public int getId() { return id; }
	public void setId(int v) { id = v; }

    @Column(name="set_id")
	protected int set_id;
	public int getSetId() { return set_id; }
	public void setSetId(int v) { set_id = v; }

    @Column(name="card_type")
	protected int card_type;
	public int getCardType() { return card_type; }
	public void setCardType(int v) { card_type = v; }
	
    @Column(name="title")    
	protected String title;
	public String getTitle() { return title; }
	public void setTitle(String v) { title = v; } 
   
    @Column(name="front_url")
	protected String front_url;
	public String getFrontUrl() { return front_url; }
	public void setFrontUrl(String v) { front_url = v; }    

    @Column(name="back_url")
	protected String back_url;
	public String getBackUrl() { return back_url; }
	public void setBackUrl(String v) { back_url = v; }    
	
	@OneToOne(mappedBy = "card_base", cascade = CascadeType.ALL)
	private PlayerCard player_card;
	
	public CardBase() {}
	public CardBase(int id, String title, int set_id, int card_type, String front_url, String back_url) {
		super();
		this.id = id;
		this.title = title;
		this.card_type = card_type;
		this.front_url = front_url;
		this.back_url = back_url;		
	}
}
