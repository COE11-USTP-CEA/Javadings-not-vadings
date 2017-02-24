package com.sample.sparkdemo;

import java.util.HashMap;
import java.util.Map;

import spark.ModelAndView;
import spark.template.freemarker.FreeMarkerEngine;
import static spark.Spark.*;

public class MainNgaClass {

    public static void main(String[] args) {
        staticFiles.location("/public"); // Static files
        
        get("/", (req, res) -> {
            Map<String, Object> model = new HashMap<>();
            
            model.put("title","Pick&Pack");
           
            
            return new ModelAndView(model, "landing.ftl"); // located in src/test/resources/spark/template/freemarker
       
           
       }, new FreeMarkerEngine());
    



get("/formFieldWBootstrap", (request, response) -> {
            Map<String, Object> model = new HashMap<>();
            model.put("forms", "ASdf");
            return new ModelAndView(model, "formFieldWBootstrap.ftl");
        }, new FreeMarkerEngine());




     post("/formFieldWBootstrap", (req,res) -> {
                String from_input1;
                String from_input2;

                from_input1 = req.queryParams("Item1");
                from_input2 = req.queryParams("Item1Details");
            
                Map<String, Object> model = new HashMap<>();
            model.put("item_name", from_input1);
            model.put("item_details", from_input2);
            return new ModelAndView(model, "iteminfo.ftl");
        }, new FreeMarkerEngine());

 }

}
