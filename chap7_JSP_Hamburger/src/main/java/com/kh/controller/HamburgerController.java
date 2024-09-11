package com.kh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.kh.entity.JPAHamburger;
import com.kh.service.HamburgerService;

@Controller
public class HamburgerController {

	@Autowired
	private HamburgerService hamburgerService;
	
	@GetMapping("/hamburgerlist")
	public String getAllHamburgers(Model model) {
		List<JPAHamburger> jpaHamburger = hamburgerService.getAllHamburgers();
		model.addAttribute("hamburgers", jpaHamburger);
		return "hamburgerList";
	}
	
	@PostMapping("/addHamburger")
	public String addHamburger(JPAHamburger jpaHamburger) {
		hamburgerService.addHamburger(jpaHamburger);
		return "redirect:/hamburgerlist";
	}
}
