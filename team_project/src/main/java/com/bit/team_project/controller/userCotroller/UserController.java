package com.bit.team_project.controller.userCotroller;

import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Component
@RequestMapping(value = "user")
public class UserController {

	@GetMapping(value = "loginForm")
	public String writeForm() {
		return "/user/loginForm";
	}
	
	@GetMapping(value = "agreement")
	public String agreement() {
		return "/user/agreement";
	}
	@GetMapping(value = "signIn")
	public String sign_in() {
		return "/user/signIn";
	}
}