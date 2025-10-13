package com.example.job_hunt;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;



@RestController
public class TestController {
    @GetMapping("hello")
    public String sayHello() {
        return "Hello World!";
    }
    
    @GetMapping("/")
    public String frontPage() {
        return "Front prage, bro.";
    }
    
}
