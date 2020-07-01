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
		
		Statement st;
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
	
	public List<Orders1> retOrders(){
		List<Orders1> ll=new ArrayList<Orders1>();
		String q="select * from orders1";
		PreparedStatement ps;
		try {
			ps = conn.prepareStatement(q);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
			Orders1 oo=new Orders1();
			oo.setOid(rs.getInt(1));
			oo.setDate(rs.getString(2));
			oo.setShippingMeans(rs.getString(3));
			oo.setStatus(rs.getString(4));
			ll.add(oo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ll;
	}
	
	public List<Books> retAllBooksAdmin(){
		List<Books> lb=new ArrayList<Books>();
		String q="select * from books";
		PreparedStatement ps;
		try {
			ps = conn.prepareStatement(q);
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

	public String delBook(int bid) {
		String s="Unsuccessful";
		String q="update books set stock=0 where bid="+bid;
		try {
			PreparedStatement ps=conn.prepareStatement(q);
			if(ps.executeUpdate()>0) {
				s="The book has been deleted Successfully.";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return s;
	}
	
	public String retBooks(int bid) {
		String s="Unsuccessful";
		String q="select * from books where bid="+bid;
		try {
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery(q);
			while(rs.next()) {
			System.out.println(rs.getString(2));}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return s;
	}
	
	public void updateBook(String bname, float price, String authname,int yop,String pname,String lang,String sname,int u,int stock) {
		Statement st;
		int bid=0;
		String qq="select bid from books where btitle='"+bname+"'";
		Statement st5;
		try {
			st5 = conn.createStatement();
			ResultSet rs5=st5.executeQuery(qq);
			while(rs5.next())
				bid=rs5.getInt(1);
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
			ResultSet rs1=st.executeQuery("select a.pid from publishers as a where a.pname= '"+pname+"'");
			int pid=0;
			while(rs1.next())
				pid=rs1.getInt(1);
			ResultSet rs2=st.executeQuery("select a.sid from subjects as a where a.sname= '"+sname+"'");
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
					ps.setString(2, pname);
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
					ps.setString(2, sname);
					ps.executeUpdate();
				}
				catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}
			PreparedStatement ps=null;
			String q="update books set btitle=?,authid=?,pprice=?,publishid=?,subid=?,yop=?,lid=?,used=?,stock=? where bid="+bid;
//			String query="insert into books values(?,?,?,?,?,?,?,?,?,?)";
			try {
				ps=conn.prepareStatement(q);
				ps.setString(1,bname);
				ps.setInt(2,aid);
				ps.setFloat(3,price);
				ps.setInt(4,pid);
				ps.setInt(5,sid);
				ps.setInt(6,yop);
				ps.setInt(7,lid);
				ps.setInt(8,u);
				ps.setInt(9,stock);
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
	
	public String retAuth(int a) {
		String q="select authorname from authors where authid=?";
		String s="";
		PreparedStatement ps;
		try {
			ps=conn.prepareStatement(q);
			ps.setInt(1, a);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				s=rs.getString(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return s;
	}
	
	public String retLang(int a) {
		String q="select lname from language where lid=?";
		String s="";
		PreparedStatement ps;
		try {
			ps=conn.prepareStatement(q);
			ps.setInt(1, a);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				s=rs.getString(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return s;
	}
	
	public List<Orders1> retOrdersAdmin(){
		List<Orders1> ll=new ArrayList<Orders1>();
		String q="select * from orders1";
		try {
			Statement st=conn.createStatement();
			ResultSet rs=st.executeQuery(q);
			while(rs.next()) {
				Orders1 oo=new Orders1();
				oo.setOid(rs.getInt(1));
				oo.setDate(rs.getString(2));
				oo.setShippingMeans(rs.getString(3));
				oo.setStatus(rs.getString(4));
				ll.add(oo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ll;
	}
	public void updateOrderStatus(int oid,String s) {
		String q="update orders1 set Status=? where orderid=?";
		try {
			PreparedStatement ps=conn.prepareStatement(q);
			ps.setString(1, s);
			ps.setInt(2, oid);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public String deliveryQueueUpdate(String s)
	{
		String str="";
		if(s.equalsIgnoreCase("pending"))
			str="Dispatched";
		if(s.equalsIgnoreCase("Dispatched"))
			str="Delivered";
		return str;
	}
	public int retBookCount()
	{
		int bid=0;
		String qq="select count(*) from books";
		Statement st5;
		try {
			st5 = conn.createStatement();
			ResultSet rs5=st5.executeQuery(qq);
			while(rs5.next())
				bid=rs5.getInt(1);
			
		} catch (SQLException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		}
		return bid;
	}
	public int retAuthCount()
	{
		int bid=0;
		String qq="select count(*) from authors";
		Statement st5;
		try {
			st5 = conn.createStatement();
			ResultSet rs5=st5.executeQuery(qq);
			while(rs5.next())
				bid=rs5.getInt(1);
			
		} catch (SQLException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		}
		return bid;
	}
	public int retCountPublish()
	{
		int bid=0;
		String qq="select count(*) from publishers";
		Statement st5;
		try {
			st5 = conn.createStatement();
			ResultSet rs5=st5.executeQuery(qq);
			while(rs5.next())
				bid=rs5.getInt(1);
			
		} catch (SQLException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		}
		return bid;
	}
	public int retUsersCount()
	{
		int bid=0;
		String qq="select count(*) from customer";
		Statement st5;
		try {
			st5 = conn.createStatement();
			ResultSet rs5=st5.executeQuery(qq);
			while(rs5.next())
				bid=rs5.getInt(1);
			
		} catch (SQLException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		}
		return bid;
	}
}
