package com.proj.util;

public class Country {

	private int cId;
	private String cName;
	
	public Country() {
	}
	public Country(int a,String b) {
		this.cId=a;
		this.cName=b;
	}
	
	public int getcId() {
		return cId;
	}
	public void setcId(int cId) {
		this.cId = cId;
	}
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	
}
