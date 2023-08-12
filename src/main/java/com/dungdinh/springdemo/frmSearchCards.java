package com.dungdinh.springdemo;

//import jakarta.validation.constraints.Min;
//import jakarta.validation.constraints.NotNull;
//import jakarta.validation.constraints.Size;

public class frmSearchCards {
	private String title;
	public String getTitle() { return title; }
	public void setTitle(String v) { title = v; }

	private int cost;
	public int getCost() { return cost; }
	public void setCost(String v) {
		if  (v==null || v.trim().isEmpty()) cost = -1;
		else 
			cost = Integer.parseInt(v);
	}
	
	
	private int isGuardian;
	public int getIsGuardian() { return isGuardian; }
	public void setIsGuardian(int v) { isGuardian = v; }

	private int isSeeker;
	public int getIsSeeker() { return isSeeker; }
	public void setIsSeeker(int v) { isSeeker = v; }

	private int isMystic;
	public int getIsMystic() { return isMystic; }
	public void setIsMystic(int v) { isMystic = v; }
	
	private int isRogue;
	public int getIsRogue() { return isRogue; }
	public void setIsRogue(int v) { isRogue = v; }	

	private int isSurvivor;
	public int getIsSurvivor() { return isSurvivor; }
	public void setIsSurvivor(int v) { isSurvivor = v; }

	private int isNeutral;
	public int getIsNeutral() { return isNeutral; }
	public void setIsNeutral(int v) { isNeutral = v; }

	
	public frmSearchCards() {
		cost = -1;
		title = "";
		isGuardian = 0;
		isSeeker = 0;
		isMystic = 0;
		isRogue = 0;
		isSurvivor = 0;
		isNeutral = 0;
	}
	
	public String toString() {
		return 
				"cost: " + cost + "\n" + 
				"title: " + title + "\n" + 
				"isGuardian: " + isGuardian + "\n" +
				"isSeeker: " + isSeeker + "\n" +
				"isMystic: " + isMystic + "\n" +
				"isRouge: " + isRogue + "\n" +
				"isSurvivor: " + isSurvivor + "\n" + 
				"isNeutral: " + isNeutral;
		
	}
}
