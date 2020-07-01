package com.proj.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserUtilCls {
	
	static Connection conn=null;

	public UserUtilCls() {
		// TODO Auto-generated constructor stub
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/rituraj?characterEncoding=latin1&useConfigs=maxPerformance","root","1234");
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * For generating a unique order id for a login
	 * @return x which is a unique order id
	 */
	public int genOrderId() {
		String q="select count(*) from orders1";
		int x=0;
		try {
			PreparedStatement ps=conn.prepareStatement(q);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			x=rs.getInt(1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}return (x+1);
	}
	/***
	 * Returns all the books present in the database which are in stock
	 * @return lb list of the books 
	 */
	public List<Books> retAllBooksUser(){
		List<Books> lb=new ArrayList<Books>();
		String q="select * from books where stock>?";
		PreparedStatement ps;
		try {
			ps = conn.prepareStatement(q);
			ps.setInt(1, 0);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
			Books bb=new Books();
			bb.setBid(rs.getInt(1));
			bb.setbTitle(rs.getString(2));
			bb.setAuthId(rs.getInt(3));
			bb.setpPrice(rs.getFloat(4));
			bb.setPublishId(rs.getInt(5));
			bb.setSubId(rs.getInt(6));
			bb.setYop(rs.getInt(7));
			bb.setlId(rs.getInt(8));
			bb.setUsed(rs.getInt(9));
			bb.setStock(rs.getInt(10));
			lb.add(bb);
			}
		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lb;
	}
	

}
