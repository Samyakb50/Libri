package com.proj.util;

public class Orders {

	private int oId;
	private int bId;
	private int qty;
	public Orders() {
	}
	public Orders(int a,int b,int c) {
		this.oId=a;
		this.bId=b;
		this.setQty(c);
	}
	public int getoId() {
		return oId;
	}
	public void setoId(int oId) {
		this.oId = oId;
	}
	public int getbId() {
		return bId;
	}
	public void setbId(int bId) {
		this.bId = bId;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	
	
}
