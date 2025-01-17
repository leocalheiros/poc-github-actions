package com.leocalheiros.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldController {
    @GetMapping("/hello-world")
    public String getHelloWorld(){
        return "Hello World";
    }

    @GetMapping("/ping")
    public String getPing(){
        return "Pong";
    }
}
