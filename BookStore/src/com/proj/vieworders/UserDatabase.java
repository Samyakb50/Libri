package com.proj.vieworders;

import java.sql.*;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class UserDatabase {
	static Connection conn = null;
	List<UserDatabaseCls> ls = Collections.EMPTY_LIST;
	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/rituraj?characterEncoding=latin1&useConfigs=maxPerformance","root", "1234");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public UserDatabase() {
		ls = new ArrayList<UserDatabaseCls>();
	}

	public List<UserDatabaseCls> userDatabase(int customerId) {
		Statement st;
		try {
			st = conn.createStatement();
			ResultSet rs = st.executeQuery("select OrderId,sum(quantity) from cart where  Custid ="+customerId+" group by OrderId");
			int ordId, bId, qty, custId;
			while (rs.next()) {
				UserDatabaseCls obj = new UserDatabaseCls();
				obj.setOrderid(rs.getInt(1));
				obj.setSum(rs.getInt(2));
				ls.add(obj);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ls;
	}

	public List<CustOrders> viewPrevOrders(int customerId)
	{
		
		Statement st;
		 List<UserDatabaseCls> ls = userDatabase(customerId);
		 List<CustOrders> ll=new ArrayList<CustOrders>();
		try {
			st = conn.createStatement();
			for(int i=0;i<ls.size();i++)
			{
			ResultSet rs=st.executeQuery(" select Status,ShippingMeans,date from Orders1 where Orderid ="+ls.get(i).getOrderid());
			while(rs.next())
			{
				 CustOrders cc=new CustOrders();
				 cc.setOid(ls.get(i).getOrderid());
				 cc.setSum(ls.get(i).getSum());
				 cc.setStatus(rs.getString(1));
				 cc.setMopay(rs.getString(2));
				 cc.setDate(rs.getString(3));
				 ll.add(cc);
			}
		}
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ll;
	}
}
