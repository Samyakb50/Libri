package com.proj.sam;

import java.util.ArrayList;
import java.util.List;

public class OrderUtil2 {
	OrderUtil ot=new OrderUtil();
	List<Orders1> ll=new ArrayList<Orders1>();
	Orders1 o=new Orders1();
	public List<Orders1> retOrder()
	{
		return ll;
	}
	public void send(int oid,String status,String date,String mode)
	{
		o.setOid(oid);
		o.setStatus(status);
		o.setDate(date);
		o.setShippingMeans(mode);
		ll.add(o);
	}
	public void setEmpty()
	{
		ll.clear();
	}
}
