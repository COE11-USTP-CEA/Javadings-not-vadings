package com.sample.sparkdemo;

import com.sample.sparkdemo.model.Item;
import com.sample.sparkdemo.model.Items;

import java.util.HashMap;
import java.util.Map;
import java.util.*;
import java.util.ArrayList;
import spark.ModelAndView;
import spark.template.freemarker.FreeMarkerEngine;
import static spark.Spark.*;

public class MainNgaClass {

    public static void main(String[] args) {
        staticFiles.location("/public"); // Static files
        
		Items items = new Items();
		
        get("/testinglang", (req, res) -> {
            Item item = new Item();
            item.setName("pepsi");
            item.setCode("p");

            Items.putItem(item);
            //Item.all();

            item = new Item();
            item.setName("coke");
            item.setCode("c");

            Items.putItem(item);

            Map<String, Object> model = new HashMap<>();

            model.put("title", "testing lang");
            model.put("items", Items.all());
            model.put("founditem",Items.findItemByCode("p"));
           
            
            return new ModelAndView(model, "testinglang.ftl"); // located in src/test/resources/spark/template/freemarker
       
           
       }, new FreeMarkerEngine());
    
        get("/", (req, res) -> {
            Map<String, Object> model = new HashMap<>();

            
            model.put("title","Pick&Pack");
           
            
            return new ModelAndView(model, "landing.ftl"); // located in src/test/resources/spark/template/freemarker
       
           
       }, new FreeMarkerEngine());
    



        get("/add", (request, response) -> {
            Map<String, Object> model = new HashMap<>();
            model.put("title", "Add New Items");
            return new ModelAndView(model, "add.ftl");
        }, new FreeMarkerEngine());

        /*get("/view/:code", (request, response) -> {
            Map<String, Object> model = new HashMap<>();
            model.put("title", "Add New Items");
            model.put("founditem", Item.findItemByCode(request.params(":code")));
            return new ModelAndView(model, "view.ftl");
        }, new FreeMarkerEngine()); *///penya
		
		get("/list", (request, response) -> {
            Map<String, Object> model = new HashMap<>();
            model.put("title", "List Items");
            model.put("items", Items.all());
            return new ModelAndView(model, "list.ftl");
        }, new FreeMarkerEngine());
		
		post("/add", (req,res) -> {
                String code;
                String name;

            Map<String, Object> model = new HashMap<>();
                code = req.queryParams("code");
                name = req.queryParams("name");

            Item item = new Item();
            item.setCode(code);
            item.setName(name);

            Items.putItem(item);

            
            // model.put("code", code);
            // model.put("name", name);
            model.put("item", item);
            return new ModelAndView(model, "show.ftl");
        }, new FreeMarkerEngine());
		

        post("/create", (req,res) -> {
                String from_input1;
                String from_input2;

            Map<String, Object> model = new HashMap<>();
                from_input1 = req.queryParams("Item1");
                from_input2 = req.queryParams("Item1Details");
            
            model.put("item_name", from_input1);
            model.put("item_details", from_input2);
            return new ModelAndView(model, "iteminfo.ftl");
        }, new FreeMarkerEngine());

    }

}
