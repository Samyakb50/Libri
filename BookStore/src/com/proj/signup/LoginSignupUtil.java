package com.proj.signup;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Collections;
import java.util.List;

import javax.xml.ws.Response;

import org.apache.catalina.startup.HomesUserDatabase;

import com.sun.org.glassfish.gmbal.NameValue;

public class LoginSignupUtil {
	List<LoginSignupUtil>ls=Collections.EMPTY_LIST;
	static Connection conn=null;//Globally
	static{

	try {
	Class.forName("com.mysql.jdbc.Driver");
	conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/rituraj?characterEncoding=latin1&useConfigs=maxPerformance","root","1234");
	} catch (ClassNotFoundException |SQLException e) {

	e.printStackTrace();
	}
	}
	public LoginSignupUtil() {

	}
	public void insSignUp(int i,String j,String k,String l,String m)
	{
	PreparedStatement ps=null;
	String query="insert into customer values(?,?,?,?,?)";
	System.out.println(i);
	try {
	ps=conn.prepareStatement(query);
	ps.setInt(1,i);
	ps.setString(2,j);
	ps.setString(3,k);
	ps.setString(4,l);
	ps.setString(5, m);
	ps.execute();

	} catch (SQLException e1) {

	e1.printStackTrace();
	}

	}
	public String LoginCheck(String a,String b)
	{

	String login="";
	ResultSet rs;
	try {
	Statement s=conn.createStatement();
	rs = s.executeQuery("select * from customer where nam='"+a+"' and pass='"+b+"'");

	while(rs.next())
	{
	if(a.equals(rs.getString(2)) && b.equals(rs.getString(3)))
	{
	//Send to homepage
	login="true";
	}
	else{
	//send to login page again
	login="false";
	}
	}
	} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	}
	catch(NullPointerException e)
	{
	e.printStackTrace();
	}

	return login;

	}	
	public String adminLoginCheck(String a,String b)
	{

	String login="";
	ResultSet rs;
	try {
	Statement s=conn.createStatement();
	rs = s.executeQuery("select * from admin where username='"+a+"' and password='"+b+"'");

	while(rs.next())
	{
	if(a.equals(rs.getString(1)) && b.equals(rs.getString(2)))
	{
	//Send to homepage
	login="true";
	}
	else{
	//send to login page again
	login="false";
	}
	}
	} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	}
	catch(NullPointerException e)
	{
	e.printStackTrace();
	}

	return login;

	}	

	public boolean checkUname(String s) {
		String q="select count(*) from customer where nam=?";
		boolean f=true;
		int x=0;
		try {
			PreparedStatement ps=conn.prepareStatement(q);
			ps.setString(1, s);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				x=rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(x>0)
			f=false;
		return f;
	}
	
	public int genCustId() {
		String q="select count(*) from customer";
		int i=0;
		try {
			Statement st=conn.createStatement();
			ResultSet rs=st.executeQuery(q);
			while(rs.next()) {
				i=rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return (i+1);
	}
	public String Forgot(String a)
	{
	String z="";
	try {
	Statement s=conn.createStatement();
	ResultSet rs=s.executeQuery("select * from customer where email='"+a+"'");
	while(rs.next())
	{
	if(a.equalsIgnoreCase(rs.getString(4)))
	{
	z="new";

	}
	else{
	z="no";
	}
	}
	} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	}

	return z;
	}
	public int retCustId(String s) {
		String q="select custid from customer where nam=?";
		int c=0;
		try {
			PreparedStatement ps=conn.prepareStatement(q);
			ps.setString(1, s);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				c=rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return c;
	}

}


