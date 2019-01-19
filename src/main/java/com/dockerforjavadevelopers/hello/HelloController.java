package com.dockerforjavadevelopers.hello;

import java.lang.System;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;

@RestController
public class HelloController {
    
    @RequestMapping("/")
    public String index() {
    	    String prefix = System.getenv().getOrDefault("SPECIAL_LEVEL_KEY", "Hi");
        return "Hello World From \n" + prefix;
    }
    
}
