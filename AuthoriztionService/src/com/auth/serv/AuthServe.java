package com.auth.serv;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.ws.rs.GET;
import javax.ws.rs.MatrixParam;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;

@Path("/auth")
public class AuthServe {
	
	@GET
	@Path("/ulogin/{uname}/{pass}")
	public String admLogin(@PathParam("uname") String uname,@PathParam("pass") String pass) {
		String auth="INVALID";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/rituraj?characterEncoding=latin1&useConfigs=maxPerformance", "root", "1234");
			Statement st=conn.createStatement();
			String passNew="";
			String query="select password from admin where username='"+uname+"'";
			ResultSet rs=st.executeQuery(query);
			while(rs.next()) {
				passNew=rs.getString(1);
			}
		
			if(passNew.equals(pass)) {
				auth="VALID";
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return auth;
	}
	

}
