package com.naughty.userlogin02.controller;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
@CrossOrigin
@RestController
public class TestController {

    @RequestMapping("/test")
    public String test(){
        System.out.println(123);
        return "123";
    }


}
