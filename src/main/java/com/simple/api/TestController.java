package com.simple.api;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {

    @GetMapping
    @RequestMapping("/test")
    public String testMessage(){
        return "the API is working fine...";
    }
}
