package com.proj.util;

public class Books {

	private int bid;
	private String bTitle;
	private int authId;
	private float pPrice;
	private int publishId;
	private int yop;
	private int subId;
	private int lId;
	private int used;
	private int stock;
	
	public int getlId() {
		return lId;
	}
	public void setlId(int lId) {
		this.lId = lId;
	}
	public Books() {
	}
	public Books(int a,String b,int c,float d,double e,int f,int g,int i,int j,int k) {
		this.bid=a;
		this.bTitle=b;
		this.authId=c;
		this.pPrice=d;
		this.publishId=f;
		this.yop=g;
		this.subId=i;
		this.lId=j;
		this.used=k;
	}
	public int getPublishId() {
		return publishId;
	}
	public void setPublishId(int publishId) {
		this.publishId = publishId;
	}
	public int getYop() {
		return yop;
	}
	public void setYop(int yop) {
		this.yop = yop;
	}
	public int getSubId() {
		return subId;
	}
	public void setSubId(int subId) {
		this.subId = subId;
	}
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public String getbTitle() {
		return bTitle;
	}
	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}
	public int getAuthId() {
		return authId;
	}
	public void setAuthId(int authorId) {
		this.authId = authorId;
	}
	public float getpPrice() {
		return pPrice;
	}
	public void setpPrice(float pPrice) {
		this.pPrice = pPrice;
	}
	public int isUsed() {
		return used;
	}
	public void setUsed(int used) {
		this.used = used;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	
	
}
