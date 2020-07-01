package com.proj.sam;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

import com.proj.util.CartUtil;
import com.proj.util.UtilCls;

public class OrderUtil {
	static Connection conn = null;
	List<CartDisp> ls = Collections.EMPTY_LIST;

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

	public OrderUtil() {
		ls = new ArrayList<CartDisp>();
	}

	public List<CartDisp> retList() {
		try {
			OrderUtil ot = new OrderUtil();
			UtilCls u = new UtilCls();
			int oid = u.genOrderId();
			Statement st = conn.createStatement();
			CartUtil ct = new CartUtil();
			ConcurrentHashMap<Integer, Integer> ch = ct.retHash();
			Set set1 = ch.keySet();
			for (Object o : set1) {
				Integer p = (Integer) o;
				Integer q = (Integer) ch.get(o);

				ResultSet rs = st.executeQuery("select * from books where bid=" + p);

				while (rs.next()) {
					CartDisp bb = new CartDisp();
					bb.setOid(oid);
					bb.setBid(p);
					bb.setBname(bname);//
					bb.setPrice(price);//
					bb.setQty(q);
					bb.setTotal(total);//
					ls.add(bb);
				}
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ls;
	}

}
