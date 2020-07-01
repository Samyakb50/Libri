package com.proj.sam;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class MenuHelper {
	static Connection conn = null;
	List<Menu> ls = Collections.EMPTY_LIST;

	static {

		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/thalesdb?characterEncoding=latin1&useConfigs=maxPerformance", "root",
					"Root");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public MenuHelper() {
		ls = new ArrayList<Menu>();
	}

	public List<Menu> retList() {
		try {
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery("select * from books");
			int bid = rs.getInt(4);
			ResultSet rs2 = st.executeQuery("select authorname from authors where authid=" + bid);

			while (rs.next()) {
				Menu bb = new Menu();

				bb.setBid(rs.getInt(1));
				bb.setBtitle(rs.getString(2));
				bb.setBprice(rs.getString(3));
				bb.setImage(rs.getString(4));
				bb.setAuthorName(rs2.getString(1));
				ls.add(bb);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ls;
	}
	public void setEmpty()
	{
		ls.clear();
	}


}
