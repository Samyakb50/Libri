package com.proj.util;

public class Language {

	private int lId;
	private String lName;
	public Language() {
	}
	public Language(int a,String b) {
		this.lId=a;
		this.lName=b;
	}
	public int getlId() {
		return lId;
	}
	public void setlId(int lId) {
		this.lId = lId;
	}
	public String getlName() {
		return lName;
	}
	public void setlName(String lName) {
		this.lName = lName;
	}
	
}
