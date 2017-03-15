package com.sample.sparkdemo.model;
import java.util.ArrayList;

public class Item {
	public String name, code;

	// public static ArrayList<Item> items = new ArrayList<Item>();

	// public static ArrayList<Item> all(){
	// 	return items;
	// }

	// public static void listAll(){
	// 	for (Item item : items) {
	// 		System.out.println("item name:" + item.name);
	// 		System.out.println("item code:" + item.code);
	// 	}
	// }

	// public static void putItem(Item item){
	// 	items.add(item);
	// }

	// public static Item findItemByCode(String code){
	// 	for (Item item : items ) {
	// 		if (code == item.code) {
	// 			return item;
	// 		}
	// 	};
	// 	return null;
	// }


	public void setName(String name){
		this.name = name;
	}

	public String getName(){
			return name;
		}
	

	public String getCode(){
		return code;
	}

	public void setCode(String code){
		this.code = code;
	}
}
