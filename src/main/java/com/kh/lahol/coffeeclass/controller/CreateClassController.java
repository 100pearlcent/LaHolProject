package com.kh.lahol.coffeeclass.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CreateClassController {
	
	@GetMapping("/coffeeclass/createclass")
	public String createclass() {
		return "coffeeclass/bus_create";
	}

}
