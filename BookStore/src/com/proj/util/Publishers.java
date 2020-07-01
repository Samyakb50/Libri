package com.proj.util;

public class Publishers {

	private int pId;
	private String pName;
	
	public Publishers() {
	}
	public Publishers(int a,String b) {
		this.pId=a;
		this.pName=b;
	}
	
	public int getpId() {
		return pId;
	}
	public void setpId(int pId) {
		this.pId = pId;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	
}
