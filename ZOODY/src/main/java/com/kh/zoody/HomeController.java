package com.kh.zoody;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("home")
public class HomeController {
	
	@ResponseBody
	public String home() {
		return "home";
	}
	
}
