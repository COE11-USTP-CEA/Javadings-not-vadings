package com.sample.sparkdemo;

import java.util.HashMap;
import java.util.Map;

import spark.ModelAndView;
import spark.template.freemarker.FreeMarkerEngine;
import static spark.Spark.*;

public class MainNgaClass {

    public static void main(String[] args) {
        staticFiles.location("~/Desktop/oop/html/css"); // Static files
        
        get("/landingpage", (req, res) -> {
            Map<String, Object> model = new HashMap<>();
            
            model.put("title","Javadings' Inventory Web App");
            model.put("message", "Halu!");
            model.put("brand", "Javadings' Backpacking");
            model.put("button", "Sign in");
           
           	model.put("button1", "Add");
            model.put("button2", "Remove");
            model.put("button3", "Replace");
            
            model.put("descrp", "This is Javadings' Inventory Web App where everything is in your Backpack.");
            model.put("add_item", "Add");
            model.put("add_descrp", "Click here to add an item to your backpack.");
            
            model.put("remove_item", "Remove");
            model.put("remove_descrp", "Click here to remove an item from your backpack.");
           
            model.put("edit_item", "Replace");
            model.put("edit_descrp", "Click here to remove an item from your backpack.");

            model.put("footer", "2017 Penyakamaayo, Inc.");

            return new ModelAndView(model, "landingpage.ftl"); // located in src/test/resources/spark/template/freemarker
        }, new FreeMarkerEngine());
    }
}
