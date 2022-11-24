package com.bit.team_project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "test")
public class TestController {
	
	@RequestMapping(value = "/sideBanner")
	public String sideBanner() {
		return "/test/sideBanner";
	}

}
