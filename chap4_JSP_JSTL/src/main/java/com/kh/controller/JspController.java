package com.kh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class JspController {

	@GetMapping("/cswitch")
	public String cSwitch() {
		return "cSwitch";
	}
	
	@GetMapping("/cforeach")
	public String cForEach() {
		return "cForEach";
	}
	
	@GetMapping("/cformatnumber")
	public String cFORMATNumber() {
		return "cFORMATNumber";
	}
}
