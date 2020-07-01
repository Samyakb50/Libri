package com.proj.util;

import java.sql.*;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

public class UtilCls {
	static Connection conn=null;

	public UtilCls() {
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
	public void addBook(String bname,String authname,float price,String publisher,String subject, int yop,String lang,int u,int stock) {
		Statement st;
		int bid=0;
		String qq="select count(*) from books";
		Statement st5;
		try {
			st5 = conn.createStatement();
			ResultSet rs5=st5.executeQuery(qq);
			while(rs5.next())
				bid=rs5.getInt(1);
			bid++;
		} catch (SQLException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		}
		
		
		try {
			st = conn.createStatement();
			ResultSet rs=st.executeQuery("select a.authId from authors as a where a.authorName= '"+authname+"'");
			int aid=0;
			while(rs.next())
				aid=rs.getInt(1);
			ResultSet rs1=st.executeQuery("select a.pid from publishers as a where a.pname= '"+publisher+"'");
			int pid=0;
			while(rs1.next())
				pid=rs1.getInt(1);
			ResultSet rs2=st.executeQuery("select a.sid from subjects as a where a.sname= '"+subject+"'");
			int sid=0;
			while(rs2.next())
				sid=rs2.getInt(1);
			ResultSet rs3=st.executeQuery("select a.lid from language as a where a.lname= '"+lang+"'");
			int lid=0;
			while(rs3.next())
				lid=rs3.getInt(1);
			if(aid==0) {
				String q2="select count(*) from authors";
				Statement st1=conn.createStatement();
				ResultSet rss=st1.executeQuery(q2);
				int x=0;
				while(rss.next())
					x=rss.getInt(1);
				aid=x+1;
				String query1="insert into authors values(?,?,?)";
				PreparedStatement ps=null;
				
				try {
					ps=conn.prepareStatement(query1);
					ps.setInt(1, aid);
					ps.setString(2, authname);
					ps.setInt(3, 1);
					ps.executeUpdate();
				}
				catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}
			
			if(pid==0) {
				String q2="select count(*) from publishers";
				Statement st1=conn.createStatement();
				ResultSet rss=st1.executeQuery(q2);
				int x=0;
				while(rss.next())
					x=rss.getInt(1);
				pid=x+1;
				String query1="insert into publishers values(?,?)";
				PreparedStatement ps=null;
				
				try {
					ps=conn.prepareStatement(query1);
					ps.setInt(1, pid);
					ps.setString(2, publisher);
					ps.executeUpdate();
				}
				catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}
			if(lid==0) {
				String q2="select count(*) from language";
				Statement st1=conn.createStatement();
				ResultSet rss=st1.executeQuery(q2);
				int x=0;
				while(rss.next())
					x=rss.getInt(1);
				lid=x+1;
				String query1="insert into language values(?,?)";
				PreparedStatement ps=null;
				
				try {
					ps=conn.prepareStatement(query1);
					ps.setInt(1, lid);
					ps.setString(2, lang);
					ps.executeUpdate();
				}
				catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}
			if(sid==0) {
				String q2="select count(*) from subjects";
				Statement st1=conn.createStatement();
				ResultSet rss=st1.executeQuery(q2);
				int x=0;
				while(rss.next())
					x=rss.getInt(1);
				sid=x+1;
				String query1="insert into subjects values(?,?)";
				PreparedStatement ps=null;
				
				try {
					ps=conn.prepareStatement(query1);
					ps.setInt(1, sid);
					ps.setString(2, subject);
					ps.executeUpdate();
				}
				catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}
			PreparedStatement ps=null;
			String query="insert into books values(?,?,?,?,?,?,?,?,?,?)";
			try {
				ps=conn.prepareStatement(query);
				ps.setInt(1,bid);
				ps.setString(2,bname);
				ps.setInt(3,aid);
				ps.setFloat(4,price);
				ps.setInt(5,pid);
				ps.setInt(6,sid);
				ps.setInt(7,yop);
				ps.setInt(8,lid);
				ps.setInt(9,u);
				ps.setInt(10,stock);
				ps.executeUpdate();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
	public int genOrderId() {
		String q="select count(*) from orders1";
		int x=0;
		try {
			PreparedStatement ps=conn.prepareStatement(q);
			ResultSet rs=ps.executeQuery();
			x=rs.getInt(1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}return (x+1);
	}
	public List<Orders1> retOrders(){
		List<Orders1> ll=new ArrayList<Orders1>();
		String q="select * from orders1";
		PreparedStatement ps;
		try {
			ps = conn.prepareStatement(q);
			ResultSet rs=ps.executeQuery();
			Orders1 oo=new Orders1();
			oo.setOid(rs.getInt(1));
			oo.setDate(rs.getString(2));
			oo.setShippingMeans(rs.getString(3));
			oo.setStatus(rs.getString(4));
			ll.add(oo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ll;
	}
	
	public String delBook(int bid) {
		String s="Unsuccessful";
		String q="update books set stock=0 where bid="+bid;
		try {
			PreparedStatement ps=conn.prepareStatement(q);
			if(ps.executeUpdate()>0) {
				s="Successful";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return s;
	}
	
	public String retBooks(int bid) {
		String s="Unsuccessful";
		String q="select * from books";
		try {
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery("select * from books");
			while(rs.next()) {
			System.out.println(rs.getString(2));}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return s;
	}
	
	public List<Books> searchBasedOnTitle(String t){
		List<Books> ll=new ArrayList<Books>();
		String q="select * from Books where btitle="+t;
		try {
			PreparedStatement ps=conn.prepareStatement(q);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				Books bb=new Books();
				bb.setBid(rs.getInt(1));
				bb.setbTitle(rs.getString(2));
				bb.setAuthId(rs.getInt(3));
				bb.setpPrice(rs.getFloat(4));
				bb.setPublishId(rs.getInt(5));
				bb.setPublishId(rs.getInt(6));
				bb.setSubId(rs.getInt(7));
				bb.setYop(rs.getInt(8));
				bb.setlId(rs.getInt(9));
				bb.setUsed(rs.getInt(10));
				bb.setStock(rs.getInt(11));
				ll.add(bb);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ll;
	}
	public List<Books> searchBasedOnSubject(String t){
		List<Books> ll=new ArrayList<Books>();
		String q1="select sid from subjects where sname='"+t+"'";
		try {
			PreparedStatement ps=conn.prepareStatement(q1);
			ResultSet rs1=ps.executeQuery();
			int sid=rs1.getInt(1);
			String q="select * from Books where sid="+sid;
			PreparedStatement ps1=conn.prepareStatement(q1);
			ResultSet rs=ps1.executeQuery();
			while(rs.next()) {
				Books bb=new Books();
				bb.setBid(rs.getInt(1));
				bb.setbTitle(rs.getString(2));
				bb.setAuthId(rs.getInt(3));
				bb.setpPrice(rs.getFloat(4));
				bb.setPublishId(rs.getInt(5));
				bb.setPublishId(rs.getInt(6));
				bb.setSubId(rs.getInt(7));
				bb.setYop(rs.getInt(8));
				bb.setlId(rs.getInt(9));
				bb.setUsed(rs.getInt(10));
				bb.setStock(rs.getInt(11));
				ll.add(bb);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ll;
	}
	public List<Books> searchBasedOnUsed(int t){
		List<Books> ll=new ArrayList<Books>();
		String q="select * from Books where used="+t;
		try {
			PreparedStatement ps=conn.prepareStatement(q);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				Books bb=new Books();
				bb.setBid(rs.getInt(1));
				bb.setbTitle(rs.getString(2));
				bb.setAuthId(rs.getInt(3));
				bb.setpPrice(rs.getFloat(4));
				bb.setPublishId(rs.getInt(5));
				bb.setPublishId(rs.getInt(6));
				bb.setSubId(rs.getInt(7));
				bb.setYop(rs.getInt(8));
				bb.setlId(rs.getInt(9));
				bb.setUsed(rs.getInt(10));
				bb.setStock(rs.getInt(11));
				ll.add(bb);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ll;
	}
	
	public List<Books> searchBasedOnPrice(float t){
		List<Books> ll=new ArrayList<Books>();
		String q="select * from Books where pprice<"+t;
		try {
			PreparedStatement ps=conn.prepareStatement(q);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				Books bb=new Books();
				bb.setBid(rs.getInt(1));
				bb.setbTitle(rs.getString(2));
				bb.setAuthId(rs.getInt(3));
				bb.setpPrice(rs.getFloat(4));
				bb.setPublishId(rs.getInt(5));
				bb.setPublishId(rs.getInt(6));
				bb.setSubId(rs.getInt(7));
				bb.setYop(rs.getInt(8));
				bb.setlId(rs.getInt(9));
				bb.setUsed(rs.getInt(10));
				bb.setStock(rs.getInt(11));
				ll.add(bb);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ll;
	}
	
}
