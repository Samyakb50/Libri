package com.proj.util;

public class Orders1 {
	private int oid;
	private String date;
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getShippingMeans() {
		return ShippingMeans;
	}
	public void setShippingMeans(String shippingMeans) {
		ShippingMeans = shippingMeans;
	}
	private String ShippingMeans;
	private String Status;
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}

}
