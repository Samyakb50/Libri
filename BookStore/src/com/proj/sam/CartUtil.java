package com.proj.sam;

import java.util.concurrent.ConcurrentHashMap;

public class CartUtil {
	
	ConcurrentHashMap<Integer, Integer>chm=new ConcurrentHashMap<Integer, Integer>();
	public void addToCart(int bid,int q) {
		int k=0;
		if(chm.containsKey(bid)) {
			k=chm.get(bid);
			chm.put(bid, (k+q));
		}
		else {
			chm.put(bid, q);
		}
		
	}
	public void removeFromCart(int bid,ConcurrentHashMap<Integer, Integer>chm){
		chm.remove(bid);
		
	}
	public ConcurrentHashMap<Integer, Integer> retHash()
	{
		return chm;
	}
}
