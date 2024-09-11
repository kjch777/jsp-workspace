package com.kh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ListController {

	@GetMapping("/list")
	public String getListJsp() {
		
		// return 에 listExample
		// .jsp 로 끝나는 파일 중, 가져오고 싶은 파일명을 작성해준다.
		return "listExample";
	}
}
