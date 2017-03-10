package com.sample.sparkdemo.model;
import com.sample.sparkdemo.model.Item;

import java.util.ArrayList;

public class Items {
	// String name, code;

	public static ArrayList<Item> items = new ArrayList<Item>();

	public static ArrayList<Item> all(){
		return items;
	}

	public static void listAll(){
		for (Item item : items) {
			System.out.println("item name:" + item.name);
			System.out.println("item code:" + item.code);
		}
	}

	public static void putItem(Item item){
		items.add(item);
	}

	public static Item findItemByCode(String code){
		for (Item item : items ) {
			if ( code.equals(item.code) ) {
				return item;
			}
		};
		return null;
	}

}
