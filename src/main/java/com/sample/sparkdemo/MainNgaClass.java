package com.sample.sparkdemo;

import com.sample.sparkdemo.model.Item;
import com.sample.sparkdemo.model.Inventory;
import java.util.HashMap;
import java.util.Map;
import java.util.*;
import java.util.ArrayList;
import spark.ModelAndView;
import spark.template.freemarker.FreeMarkerEngine;
import static spark.Spark.*;

public class MainNgaClass {

    public static String render( Map<String, Object> model, String template){
        return new FreeMarkerEngine().render( new ModelAndView(model, template) );
    };   

    public static void main(String[] args) {
        staticFiles.location("/public"); // Static files

        Inventory inventory = new Inventory();
        

         
        get("/", (req, res) -> {
            Map<String, Object> model = new HashMap<>();
            
            model.put("title","Pick&Pack");
            
            return render(model, "landing.ftl");
        });
        
        get("/about", (request, response) -> {
            Map<String, Object> model = new HashMap<>();
            model.put("title", "About Us");
            return render(model, "about.ftl");
        });
    

        get("/add", (request, response) -> {
            Map<String, Object> model = new HashMap<>();
            model.put("title", "Add New Item to Inventory");
            return render(model, "add.ftl");
        });


        post("/add", (request,response) -> {
            Map<String, Object> model = new HashMap<>();
            String code = request.queryParams("code");
            String name = request.queryParams("name");

            Item item = new Item();
            item.setCode(code);
            item.setName(name);

            inventory.add(item);

            model.put("title", "Show Item");
            model.put("item", item);
            // response.redirect("/show/"+code);
            // return "";
            return render(model, "show.ftl");
        });


        // get("/delete/:code", (request, response) -> {
        //     Map<String, Object> model = new HashMap<>();
        //     String code = request.params(":code");
        //     Item item = inventory.deleteItemByCode(code);
            
        //     model.put("title", "Delete Item");
        //     model.put("item_code", item.code());
        //     model.put("item_name", item.name());
        //     return render(model, "delete.ftl");
        // });

        get("/delete/:code", (request, response) -> {
            Map<String, Object> model = new HashMap<>();
            String code = request.params(":code");
            Item item = inventory.findItemByCode(code);
            
            model.put("title", "Delete Item");
            model.put("item", item);
            // model.put("searchcode", code);
            // model.put("founditem", item);
            return render(model, "delete.ftl");
        });

        post("/delete", (request, response) -> {
            Map<String, Object> model = new HashMap<>();
            String code = request.queryParams("code");
            Item item = inventory.findItemByCode(code);
            inventory.deleteItemByCode(code);
            
            model.put("title", "Deleted Item");
            model.put("item", item);
            return render(model, "deleted.ftl");
        });
        
        get("/edit/:code", (request, response) -> {
            Map<String, Object> model = new HashMap<>();
            String code = request.params(":code");
            Item item = inventory.findItemByCode(code);
            
            model.put("title", "Edit Item");
            model.put("item", item);
            return render(model, "edit.ftl");
        });
        
        post("/edit", (request,response) -> {
            Map<String, Object> model = new HashMap<>();
            String code = request.queryParams("code");
            String name = request.queryParams("name");

            Item item = inventory.updateItemByCode(code,name);
            // Item item = inventory.findItemByCode(code);


            model.put("title", "Item Updated");
            model.put("item", item);
            // response.redirect("/show/"+code);
            // return "";
            return render(model, "show.ftl");
        });




        // get("/edit/:code", (request, response) -> {
        //     Map<String, Object> model = new HashMap<>();
        //     String code = request.params(":code");
        //     Item item = inventory.findItemByCode(code);
            
        //     model.put("title", "Edit Item");
        //     model.put("item_code", item.code());
        //     model.put("item_name", item.name());
        //     return render(model, "edit.ftl");
        // });


        get("/show/:code", (request, response) -> {
            Map<String, Object> model = new HashMap<>();
            String code = request.params(":code");
            Item item = inventory.findItemByCode(code);
            
            model.put("title", "Show Item");
            model.put("item", item);
            // model.put("searchcode", code);
            // model.put("founditem", item);
            return render(model, "show.ftl");
        });


        get("/list", (request, response) -> {
            Map<String, Object> model = new HashMap<>();
            model.put("title", "List Inventory");
            model.put("inventory", inventory.all());
            return render(model, "list.ftl");
        });


    }

}
