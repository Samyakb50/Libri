package com.proj.util;

public class Authors {

	private String authorName;
	private int authId;
	private int cid;
	
	public Authors() {
	}
	public Authors(String a,int b,int c) {
		this.authorName=a;
		this.authId=b;
		this.cid=c;
	}
	public String getAuthorName() {
		return authorName;
	}
	public int getauthId() {
		return authId;
	}
	public int getCid() {
		return cid;
	}
}
