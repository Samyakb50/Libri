package com.proj.checkout;

import java.sql.Connection;
import java.util.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;

public class CheckFuncs {
	
	static Connection conn=null;

	public CheckFuncs() {
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

	public void addToUserCart(int oid,int cid)
	{
		PreparedStatement ps=null;
		int bid=0;
		int q=0;
		String query="select * from tempcart";
		try {
			ps=conn.prepareStatement(query);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				bid=rs.getInt(1);
				q=rs.getInt(2);
				insIntoUserCart(oid, bid, q, cid);
			}
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
	}
	public void insIntoUserCart(int oid,int bid,int quan,int cid)
	{
		PreparedStatement ps=null;
		String query="insert into cart values(?,?,?,?)";
		try {
			ps=conn.prepareStatement(query);
			ps.setInt(1, oid);
			ps.setInt(2, bid);
			ps.setInt(3, quan);
			ps.setInt(4, cid);
			ps.executeUpdate();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
	}
	
	public void insIntoOrdStatus(int oid,String mop)
	{
		PreparedStatement ps=null;
		String status="Pending";
		  
		Calendar cal=Calendar.getInstance();
		Date date=(Date) cal.getTime(); 
		String d=date.toString();
		String query="insert into orders1 values(?,?,?,?)";
		try {
			ps=conn.prepareStatement(query);
			ps.setInt(1, oid);
			ps.setString(2, d);
			ps.setString(3, mop);
			ps.setString(4, status);
			ps.executeUpdate();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
	}
	
	public void truncTemp()
	{
		PreparedStatement ps=null;
		String query="truncate table tempcart";
		try {
			ps=conn.prepareStatement(query);
			ps.executeUpdate();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
	}

}
