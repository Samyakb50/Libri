package com.proj.util;

import java.sql.*;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;


public class GetBooks {

	static Connection conn=null;
	List<Books> ls=Collections.EMPTY_LIST;
	
	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/rituraj?characterEncoding=latin1&useConfigs=maxPerformance","root","rituraj");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public GetBooks() {
		ls=new ArrayList<Books>();
	}
	
	public List<Books> getList()
	{
		Statement st;
		try {
			st = conn.createStatement();
			ResultSet rs=st.executeQuery("select * from books");
			while(rs.next())
			{
				Books bb=new Books();
				bb.setBid(rs.getInt(1));
				bb.setbTitle(rs.getString(2));
				bb.setAuthId(rs.getInt(3));
				bb.setpPrice(rs.getFloat(4));
				bb.setPublishId(rs.getInt(5));
				bb.setYop(rs.getInt(6));
				bb.setSubId(rs.getInt(7));
				bb.setlId(rs.getInt(8));
				bb.setUsed(rs.getInt(9));
				bb.setStock(rs.getInt(10));
				ls.add(bb);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		for (Books ii : ls) {
			System.out.println(ii);
		}
		
		
		return ls;
	}
}
