package com.proj.util;

import java.sql.*;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;


public class UpdateUtilCls {

	static Connection conn=null;
	
	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/rituraj?characterEncoding=latin1&useConfigs=maxPerformance","root","1234");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public UpdateUtilCls() {
	}

	public String getBook(int i)
	{
		PreparedStatement ps=null;
		String btitle="";
		int authid=0;
		float pprice=0f;
		int publishId=0;
		int subId=0;
		int yop=0;
		int used=0;
		int stock=0;
		int langId=0;
		String fin="";
		String query="select * from books where bid=?";
		try {
			ps=conn.prepareStatement(query);
			ps.setInt(1, i);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				btitle=rs.getString(2);
				authid=rs.getInt(3);
				pprice=rs.getFloat(4);
				publishId=rs.getInt(5);
				subId=rs.getInt(6);
				yop=rs.getInt(7);
				langId=rs.getInt(8);
				used=rs.getInt(9);
				stock=rs.getInt(10);
			}
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		System.out.println("*******************"+authid);
		String q1="select authorname from authors where authid="+authid;
		String q2="select pname from publishers where pid="+publishId;
		String q3="select sname from subjects where sid="+subId;
		String q4="select lname from language where lid="+langId;
//		String ss[]= {q1,q2,q3,q4};
//		String s2[]=new String[4];
//		for (int j = 0; j < 4; j++) {
//			s2[i]=getString(ss[i]);
//			fin+=s2[i]+";";
//		}
//		return fin;
		String s1,s2,s3,s4;
		
		s1 = getString(q1);
		s2 = getString(q2);
		s3 = getString(q3);
		s4 = getString(q4);
		fin = btitle+";"+authid+";"+pprice+";"+publishId+";"+subId+";"+yop+";"+langId+";"+used+";"+stock+";"+s1+";"+s2+";"+s3+";"+s4;
		return fin;
	}
	
	
	public String getString(String q)
	{
		PreparedStatement ps=null;
		String s="";
		try {
			ps=conn.prepareStatement(q);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				s=rs.getString(1);
			}
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		return s;
	}

}
