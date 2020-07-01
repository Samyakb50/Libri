package com.proj.util;

public class Subjects {

	private int subId;
	private String sName;
	
	public Subjects() {
	}
	public Subjects(int a,String b) {
		this.subId=a;
		this.setsName(b);
	}
	public int getSubId() {
		return subId;
	}
	public void setSubId(int subId) {
		this.subId = subId;
	}
	public String getsName() {
		return sName;
	}
	public void setsName(String sName) {
		this.sName = sName;
	}
	
}
