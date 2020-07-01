package com.proj.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UtilSearch {
	static Connection conn=null;

	public UtilSearch() {
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
	/***
	 * returns a list of all the books present in the database
	 * @param t list of books
	 * @return
	 */
	public List<SearchPojo> searchAllBooks(){
		List<SearchPojo> ll=new ArrayList<SearchPojo>();
		UtilCls ut=new UtilCls();
		String q="select * from Books";
		try {
			PreparedStatement ps=conn.prepareStatement(q);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				SearchPojo bb=new SearchPojo();
				String authname=ut.retAuth(rs.getInt(3));
				String lang=ut.retLang(rs.getInt(8));
				bb.setBname(rs.getString(2));
				bb.setAuthname(authname);
				bb.setLang(lang);
				bb.setPrice(rs.getFloat(4));
				bb.setBid(rs.getInt(1));
				ll.add(bb);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ll;
	}
	/***
	 * returns a list of books that have the name same as the passed parameter
	 * @param t list of books
	 * @return
	 */
	public List<SearchPojo> searchBasedOnTitle(String t){
		List<SearchPojo> ll=new ArrayList<SearchPojo>();
		UtilCls ut=new UtilCls();
		String q="select * from Books where btitle=?";
		try {
			PreparedStatement ps=conn.prepareStatement(q);
			ps.setString(1, t);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				SearchPojo bb=new SearchPojo();
				String authname=ut.retAuth(rs.getInt(3));
				String lang=ut.retLang(rs.getInt(8));
				bb.setBname(rs.getString(2));
				bb.setAuthname(authname);
				bb.setLang(lang);
				bb.setPrice(rs.getFloat(4));
				bb.setBid(rs.getInt(1));
				ll.add(bb);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ll;
	}
	/***
	 * 
	 * @param t is a string which stores the subject whose books we need to search
	 * @return
	 */
	public List<SearchPojo> searchBasedOnSubject(String t){
		List<SearchPojo> ll=new ArrayList<SearchPojo>();
		UtilCls ut=new UtilCls();
		int sid=0;
		String q1="select sid from subjects where sname=?";
		try {
			PreparedStatement ps=conn.prepareStatement(q1);
			ps.setString(1, t);
			ResultSet rs1=ps.executeQuery();
			while(rs1.next())
			sid=rs1.getInt(1);
			String q="select * from books where subid="+sid;
			PreparedStatement ps1=conn.prepareStatement(q);
			
			ResultSet rs=ps1.executeQuery();
			while(rs.next()) {
				SearchPojo bb=new SearchPojo();
				String authname=ut.retAuth(rs.getInt(3));
				String lang=ut.retLang(rs.getInt(8));
				bb.setBname(rs.getString(2));
				bb.setAuthname(authname);
				bb.setLang(lang);
				bb.setBid(rs.getInt(1));
				bb.setPrice(rs.getFloat(4));
				ll.add(bb);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ll;
	}
	/***
	 * 
	 * @param t tells whether to search used books or unused books
	 * @return list of books according to param
	 */
	public List<SearchPojo> searchBasedOnUsedUnused(int t){
		List<SearchPojo> ll=new ArrayList<SearchPojo>();
		UtilCls ut=new UtilCls();
		String q="select * from Books where used="+t;
		try {
			PreparedStatement ps=conn.prepareStatement(q);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				SearchPojo bb=new SearchPojo();
				String authname=ut.retAuth(rs.getInt(3));
				String lang=ut.retLang(rs.getInt(8));
				bb.setBname(rs.getString(2));
				bb.setAuthname(authname);
				bb.setLang(lang);
				bb.setBid(rs.getInt(1));
				bb.setPrice(rs.getFloat(4));
				ll.add(bb);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ll;
	}
	/***
	 * returns list of books whose prices are less than the given param
	 * @param t denotes the ceil price of search
	 * @return
	 */
	public List<SearchPojo> searchBasedOnPriceLess(float t){
		List<SearchPojo> ll=new ArrayList<SearchPojo>();
		UtilCls ut=new UtilCls();
		String q="select * from Books where pprice<"+t;
		try {
			PreparedStatement ps=conn.prepareStatement(q);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				SearchPojo bb=new SearchPojo();
				String authname=ut.retAuth(rs.getInt(3));
				String lang=ut.retLang(rs.getInt(8));
				bb.setBname(rs.getString(2));
				bb.setAuthname(authname);
				bb.setLang(lang);
				bb.setBid(rs.getInt(1));
				bb.setPrice(rs.getFloat(4));
				ll.add(bb);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ll;
	}
	
	
	
	public List<SearchPojo> searchBasedOnPriceGreater(float t){
		List<SearchPojo> ll=new ArrayList<SearchPojo>();
		UtilCls ut=new UtilCls();
		String q="select * from Books where pprice>"+t;
		try {
			PreparedStatement ps=conn.prepareStatement(q);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				SearchPojo bb=new SearchPojo();
				String authname=ut.retAuth(rs.getInt(3));
				String lang=ut.retLang(rs.getInt(8));
				bb.setBname(rs.getString(2));
				bb.setAuthname(authname);
				bb.setLang(lang);
				bb.setBid(rs.getInt(1));
				bb.setPrice(rs.getFloat(4));
				ll.add(bb);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ll;
	}
	
	
	
	
	
	
	
	public int retQuantity(int bid) {
		int x=0;
		String query="select q from tempcart where bid="+bid;
		try {
			PreparedStatement ps=conn.prepareStatement(query);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				x=rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return x;
	}
}
