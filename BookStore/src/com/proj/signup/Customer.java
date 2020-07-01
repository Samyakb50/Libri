package com.proj.signup;

public class Customer {
	private String Custid;
	private String nam;
	private String pass;
	private String email;
	private String phone;
	public String getCustid() {
		return Custid;
	}
	public void setCustid(String custid) {
		Custid = custid;
	}
	public String getNam() {
		return nam;
	}
	public void setNam(String nam) {
		this.nam = nam;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}

}
