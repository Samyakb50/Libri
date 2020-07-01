package com.proj.cls;

public class Menu {
	private int bid;
	private String btitle;
	private float bprice;
	private String authorName;
	
	private int quantity;
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public String getBtitle() {
		return btitle;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public float getBprice() {
		return bprice;
	}
	public void setBprice(float bprice) {
		this.bprice = bprice;
	}
	public String getAuthorName() {
		return authorName;
	}
	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}
	
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

}
