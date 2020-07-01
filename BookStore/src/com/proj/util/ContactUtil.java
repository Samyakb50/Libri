package com.proj.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ContactUtil {
	static Connection conn=null;
	static
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			 conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/rituraj?characterEncoding=latin1&useConfigs=maxPerformance","root","rituraj");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	}
	public void insRecContact(String a,String b,String c,String d)
	{
		PreparedStatement ps=null;
		String query="insert into stud values(?,?,?,?)";
		try {
			ps=conn.prepareStatement(query);
			ps.setString(1, a);
			ps.setString(2, b);
			ps.setString(3, c);
			ps.setString(4, d);
			ps.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
