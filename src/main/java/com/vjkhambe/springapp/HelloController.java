package com.vjkhambe.springapp;

import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RestController;  

import org.springframework.boot.*;
import org.springframework.boot.autoconfigure.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

@RestController
@EnableAutoConfiguration
public class HelloController
{
	@RequestMapping("/hello")
	public String hello()
	{
		return "Hello World";
	}
	public static void main(String[] args) throws Exception {
        	SpringApplication.run(HelloController.class, args);
    	}
}

