package com.proj.sam;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DbUtil {
	static Connection conn=null;
	static
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			 conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/thalesdb?characterEncoding=latin1&useConfigs=maxPerformance","root","1234");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	}
	public void upBRec(int bid,String btitle,int authid,double pprice,double dprice,int pubid,int subid,int yop,int lid,boolean used)
	{
		PreparedStatement ps=null;
		String query="update books set btitle=?,authid=?,pprice=?,dprice=?,publishid=?,subid=?,yop=?,lid=?,used=? where bid=?";
		try {
			ps=conn.prepareStatement(query);
			
			ps.setString(1, btitle);
			ps.setInt(2, authid);
			ps.setDouble(3, pprice);
			ps.setDouble(4, dprice);
			ps.setInt(5, pubid);
			ps.setInt(6, subid);
			ps.setInt(7, yop);
			ps.setInt(8, lid);
			ps.setBoolean(9, used);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void upARec(int aid,String aname,int cid)
	{
		PreparedStatement ps=null;
		String query="update authors set authorname=?,cid=? where authid=?";
		try
		{
			ps=conn.prepareStatement(query);
			ps.setString(1, aname);
			ps.setInt(2, cid);
			ps.setInt(3, aid);
			ps.executeUpdate();
		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void upPRec(int pid,String pname)
	{
		PreparedStatement ps=null;
		String query="update publishers set pname=? where pid=?";
		try
		{
			ps=conn.prepareStatement(query);
			ps.setString(1, pname);
			ps.setInt(2, pid);
			ps.executeUpdate();
		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}	
	public void upSRec(int sid,String sname)
	{
		PreparedStatement ps=null;
		String query="update subjects set sname=? where sid=?";
		try
		{
			ps=conn.prepareStatement(query);
			ps.setString(1, sname);
			ps.setInt(2, sid);
			ps.executeUpdate();
		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void upCRec(int cid,String cname)
	{
		PreparedStatement ps=null;
		String query="update country set cname=? where cid=?";
		try
		{
			ps=conn.prepareStatement(query);
			ps.setString(1, cname);
			ps.setInt(2, cid);
			ps.executeUpdate();
		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void upLRec(int lid,String lname)
	{
		PreparedStatement ps=null;
		String query="update language set lname=? where lid=?";
		try
		{
			ps=conn.prepareStatement(query);
			ps.setString(1, lname);
			ps.setInt(2, lid);
			ps.executeUpdate();
		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}

