package com.proj.cart;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.proj.util.Books;

public class CartUtil {
	
	static Connection conn=null;

	public CartUtil() {
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
	
	public void addToCart(int bid,int q) {
		String q1="select * from tempcart where bid=?";
		int x=0,f=0;
		String q2="update tempcart set q=? where bid=?";
		String query="insert into tempcart values(?,?)";
		try {
			PreparedStatement ps1=conn.prepareStatement(q1);
			ps1.setInt(1, bid);
			ResultSet rs=ps1.executeQuery();
			while(rs.next())
			{
				f=1;
				int quan=rs.getInt(2);
				System.out.println(quan);
				quan+=q;
				PreparedStatement ps2=conn.prepareStatement(q2);
				ps2.setInt(1, quan);
				ps2.setInt(2, bid);
				ps2.executeUpdate();
			}
			if(f==0) {
			PreparedStatement ps=conn.prepareStatement(query);
			ps.setInt(1, bid);
			ps.setInt(2, q);
			ps.executeUpdate();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void deleteFromCart(int bid) {
		String query="delete from tempcart where bid=?";
		try {
			PreparedStatement ps=conn.prepareStatement(query);
			ps.setInt(1, bid);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public List<CartObj> viewCart()
	{
		List<CartObj> ls=new ArrayList<CartObj>(); 
		PreparedStatement ps=null;
		int bid=0;
		int q=0;
		Books bb=new Books();
		String query="select * from tempcart";
		try {
			ps=conn.prepareStatement(query);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				CartObj co=new CartObj();
				bid=rs.getInt(1);
				bb=retBookWithId(bid);
				q=rs.getInt(2);
				co.setBid(bid);
				co.setBname(bb.getbTitle());
				co.setQuant(q);
				co.setPrice(bb.getpPrice());
				co.setTotal(q*(bb.getpPrice()));
				co.setImgid(""+bid);
				ls.add(co);
			}
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		return ls;
	}
	
	public Books retBookWithId(int bid)
	{
		PreparedStatement ps=null;
		int q=0;
		Books bb=new Books();
		String query="select * from books where bid="+bid;
		try {
			ps=conn.prepareStatement(query);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
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
			}
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		return bb;
	}
}
