package com.dungdinh.springdemo;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.PrimaryKeyJoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.CascadeType;



//import javax.persistence.GeneratedValue;
//import javax.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "player_card")
public class PlayerCard {

	@Id
	@Column(name="id")
	protected int id; 
	public int getId() { return id; }
	public void setId(int v) { id = v; }
	
	@OneToOne
    @PrimaryKeyJoinColumn	
    private CardBase card_base;
	
    public String getTitle() { return card_base.getTitle(); };
    public void setTitle(String v) { card_base.setTitle(v); };
    
    public String getFrontUrl() { return card_base.getFrontUrl();};
    public String getBackUrl() { return card_base.getBackUrl();};
	
    
	@Column(name="cost")
	protected int cost; 
	public int getCost() { return cost; }
	public void setCost(int v) { cost = v; }
	
	@Column(name="exp")
	protected int exp;
	public int getExp() { return exp; }
	public void setExp(int v) { exp = v; }

	//
	// 0 = asset, 1 = event, 2 = skill , 3 = treachery (weakness), 4 = investigator 
	@Column(name="sub_type")
    protected int sub_type; 		
	public int getSubType() { return sub_type; }
	public void setSubType(int v) { sub_type = v; }
	
	@Column(name="is_guardian")
	protected int is_guardian;
	public int getIsGuardian() { return is_guardian; }
	public void setIsGuardian(int v) { is_guardian = v; }

	@Column(name="is_seeker")
	protected int is_seeker;
	public int getIsSeeker() { return is_seeker; }
	public void setIsSeeker(int v) { is_seeker = v; }

	@Column(name="is_rouge")
	protected int is_rouge;
	public int getIsRouge() { return is_rouge; }
	public void setIsRouge(int v) { is_rouge = v; }
	
	@Column(name="is_mystic")
	protected int is_mystic;
	public int getIsMystic() { return is_mystic; }
	public void setIsMystic(int v) { is_mystic = v; }
	
	@Column(name="is_survivor")
	protected int is_survivor;
	public int getIsSurvivor() { return is_survivor; }
	public void setIsSurvivor(int v) { is_survivor = v; }
	
	
	// 0 = no slot, 1 = one hand, 2 = two hand, 3 = one arcane, 4 = two arcane, 5 = body, 6 = accessory, 7 = ally 
	@Column(name="slot")
	protected int slot; 			
	public int getSlot() { return slot; }
	public void setSlot(int v) { slot = v; }
	
	
	public PlayerCard(){
	}
	
	public PlayerCard(
			int id, int cost, int exp, int is_guardian, int is_seeker, int is_mystic, int is_rouge, int is_survivor, int slot)
	{
		this.id = id;
		this.cost = cost;
		this.exp = exp;
		this.is_guardian = is_guardian;
		this.is_seeker = is_seeker;
		this.is_mystic = is_mystic;
		this.is_rouge = is_rouge;
		this.is_survivor = is_survivor;
		this.slot = slot;
	}
	
}
