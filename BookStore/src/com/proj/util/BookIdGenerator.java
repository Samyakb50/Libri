package com.proj.util;

import java.sql.*;

public class BookIdGenerator {
	static Connection conn=null;
	public BookIdGenerator() {
		// TODO Auto-generated constructor stub
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/rituraj?characterEncoding=latin1&useConfigs=maxPerformance","root","rituraj");
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static int genBid(String bname) {
		int x=0;
		Statement st1;
		try {
			String q2="select count(*) from books";
			st1=conn.createStatement();
			ResultSet rss=st1.executeQuery(q2);
			while(rss.next())
				x=rss.getInt(1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return x+1;
	}
}
