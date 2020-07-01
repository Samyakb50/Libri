package com.proj.sam;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

public class ViewOrderUtil {
	
	static Connection conn=null;
	public ViewOrderUtil() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/rituraj?characterEncoding=latin1&useConfigs=maxPerformance","root","rituraj");
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	MenuHelper h=new MenuHelper();
	OrderUtil2 u=new OrderUtil2();
	
	public void changeStatusAndInsert(Orders1 o)
	{
		u.setEmpty();
		h.setEmpty();
		List<Orders1> ll=u.retOrder();
		Statement st;
		try {
			
			st = conn.createStatement();
			PreparedStatement ps=null;
			String query="insert into Orders values(?,?,?,?)";
				ps=conn.prepareStatement(query);
				ps.setInt(1,o.getOid());
				ps.setString(2,"success");
				ps.setString(4,o.getShippingMeans());
				ps.setString(3,o.getDate());
		}
		catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}
}
