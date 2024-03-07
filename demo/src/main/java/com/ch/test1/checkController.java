package com.ch.test1;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping("/test")
public class checkController {
	
	
	@GetMapping("/check")
	public String check() {
		return "checkBox";
	}
	
	

}
