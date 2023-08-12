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
    private Card card;
	public String getTitle() { return card.getTitle(); }
	public String getFrontUrl() { return card.getFrontUrl(); }
	public String getBackUrl() { return card.getBackUrl(); }
	
	
	@Column(name="cost")
	protected int cost; 
	public int getCost() { return cost; }
	public void setCost(int v) { cost = v; }
	
	@Column(name="exp")
	protected int exp;
	public int getExp() { return exp; }
	public void setExp(int v) { exp = v; }

	//
	// 0 = asset, 1 = event, 2 = skill , 3 = treachery (weakness)
	//	
	@Column(name="sub_type")
    protected int subType; 		
	public int getSubType() { return subType; }
	public void setSubType(int v) { subType = v; }
	
	@Column(name="is_guardian")
	protected int isGuardian;
	public int getIsGuardian() { return isGuardian; }
	public void setIsGuardian(int v) { isGuardian = v; }

	@Column(name="is_seeker")
	protected int isSeeker;
	public int getIsSeeker() { return isSeeker; }
	public void setIsSeeker(int v) { isSeeker = v; }

	@Column(name="is_rogue")
	protected int isRogue;
	public int getIsRogue() { return isRogue; }
	public void setIsRogue(int v) { isRogue = v; }
	
	@Column(name="is_mystic")
	protected int isMystic;
	public int getIsMystic() { return isMystic; }
	public void setIsMystic(int v) { isMystic = v; }
	
	@Column(name="is_survivor")
	protected int isSurvivor;
	public int getIsSurvivor() { return isSurvivor; }
	public void setIsSurvivor(int v) { isSurvivor = v; }
	
	public PlayerCard(){
	}
	
	public PlayerCard(
			int id, int cost, int exp, int isGuardian, int isSeeker, int isMystic, int isRogue, int isSurvivor)
	{
		this.id = id;
		this.cost = cost;
		this.exp = exp;
		this.isGuardian = isGuardian;
		this.isSeeker = isSeeker;
		this.isMystic = isMystic;
		this.isRogue = isRogue;
		this.isSurvivor = isSurvivor;
	}
	
}
