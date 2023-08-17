package com.dungdinh.springdemo;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.PrimaryKeyJoinColumn;
import jakarta.persistence.OneToOne;

import java.util.HashSet;
import java.util.Set;

import jakarta.persistence.CascadeType;



//import javax.persistence.GeneratedValue;
//import javax.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinTable;
import jakarta.persistence.JoinColumn;

import jakarta.persistence.ManyToMany;
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
	
	@Column(name="card_level")
	protected int level;
	public int getLevel() { return level; }
	public void setLevel(int v) { level = v; }

	//
	// 0 = asset, 1 = event, 2 = skill , 3 = treachery (weakness)
	//	
	@Column(name="sub_type")
    protected int subType; 		
	public int getSubType() { return subType; }
	public void setSubType(int v) { subType = v; }
	
	public String getSubTypeText() {
		switch (subType) {
		case 0: return "Asset"; 
		case 1: return "Event"; 
		case 2: return "Skill"; 
		case -1: return "Treachery"; 
		case -2: return "Enemy";
		default: 
			return "";
		}
	}
	
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

	@Column(name="is_weakness")
	protected int isWeakness;
	public int getIsWeakness() { return isWeakness; }
	public void setIsWeakness(int v) { isWeakness = v; }

	
	@ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	  @JoinTable(
		name = "card_trait", 
	    joinColumns = { @JoinColumn(name = "card_id") }, 
	    inverseJoinColumns = {@JoinColumn(name = "trait_id") }
		)
	private Set<Trait> traits = new HashSet<>();
	
	
	public String getTraits() {
		String s = "";
		for (Trait t: traits) {
			s += t.getName();
		}
		return s;
	}
	
	
	public PlayerCard(){
	}
	
	public PlayerCard(
			int id, int cost, int level, 
			int isGuardian, int isSeeker, int isMystic, int isRogue, int isSurvivor, 
			int isWeakness)
	{
		this.id = id;
		this.cost = cost;
		this.level = level;
		this.isGuardian = isGuardian;
		this.isSeeker = isSeeker;
		this.isMystic = isMystic;
		this.isRogue = isRogue;
		this.isSurvivor = isSurvivor;
		this.isWeakness= isWeakness;
	}
	
}
