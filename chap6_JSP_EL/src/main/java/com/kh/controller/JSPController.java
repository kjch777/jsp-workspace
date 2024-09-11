package com.kh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/api")
public class JSPController {

	// index.jsp 기본 주소는 / 이기 때문에, index.jsp 에 대한 GetMapping 은 따로 설정해주지 않아도 상관없다.
	
	// controller 에서 Model 을 사용하여 데이터 전달하기
	@GetMapping("/msg")
	public String getMSG(Model model) {
		model.addAttribute("msg", "controller 에서 model 을 사용하여 전달하는 데이터");
		return "msg"; // msg.jsp
	}
	
	@GetMapping("/token")
	public String getToken() {
		return "forTokens"; // forTokens.jsp
	}
	
	@GetMapping("/remove")
	public String getRemove() {
		return "remove"; // remove.jsp ◀ remove 를 직접적으로 쓰는건 좋지 않다고 한다.
	}
	
	@GetMapping("/catch")
	public String getCatch() {
		return "catch"; // catch.jsp
	}
}
