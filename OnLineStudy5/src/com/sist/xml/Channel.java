package com.sist.xml;
import java.util.*;
/*
 * Rss 안에 Channel 안에 Item 50개 ==> List에 모아줌
 */
public class Channel {
	private List<Item> item=new ArrayList<Item>();

	public List<Item> getItem() {
		return item;
	}

	public void setItem(List<Item> item) {
		this.item = item;
	}
	
}
