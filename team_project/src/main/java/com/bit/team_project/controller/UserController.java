package com.bit.team_project.controller;

import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bit.team_project.DTO.UserDTO;
import com.bit.team_project.userService.UserService;

@Component
@RequestMapping(value = "user")
public class UserController {
	private UserService userService;
	
	@GetMapping(value = "loginForm")
	public String writeForm() {
		return "/user/loginForm";
	}
	
	@GetMapping(value = "agreement")
	public String agreement() {
		return "/user/agreement";
	}
	@GetMapping(value = "writeForm")
	public String sign_in() {
		return "/user/writeForm";
	}
	@PostMapping(value = "write")
	public String write(@ModelAttribute UserDTO userDTO) {
		userService.write(userDTO);
		return "/";
	}
}