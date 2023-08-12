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
	
	private int isRouge;
	public int getIsRouge() { return isRouge; }
	public void setIsRouge(int v) { isRouge = v; }	

	private int isSurvivor;
	public int getIsSurvivor() { return isSurvivor; }
	public void setIsSurvivor(int v) { isSurvivor = v; }
	
	public String toString() {
		return 
				"cost: " + cost + " -- " + 
				"isGuardian: " + isGuardian + " -- " +
				"isSeeker: " + isSeeker + " -- " +
				"isMystic: " + isMystic + " -- " +
				"isRouge: " + isRouge + " -- " +
				"isSurvivor: " + isSurvivor;
		
	}
}
