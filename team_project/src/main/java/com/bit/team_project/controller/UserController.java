package com.bit.team_project.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit.team_project.DTO.UserDTO;
import com.bit.team_project.userService.UserService;

@Component
@RequestMapping(value = "user")
public class UserController {
	@Autowired
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
	@ResponseBody
	public void write(@ModelAttribute UserDTO userDTO) {
		userService.write(userDTO);
	}
	@PostMapping(value = "checkId")
	@ResponseBody
	public String checkId(@RequestParam String id) {
		return userService.checkId(id);
	}
	
	@PostMapping(value = "/login")
	@ResponseBody
	public String login(@RequestParam String id, @RequestParam String pwd, HttpSession session) {
		
		Map<String, String>map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pwd", pwd);
		UserDTO userDTO = userService.login(map);
		
		if(userDTO != null) {
			session.setAttribute("id", id);
			session.setAttribute("name", userDTO.getName());
			return "ok";
		}
		else return "fail";
	}
	
	@PostMapping(value = "/logout")
	@ResponseBody
	public void logout(HttpSession session){
		session.invalidate();
	}

	@GetMapping(value = "/kakaoLogin")
	public String kakaoLogin(@RequestParam String code, HttpSession session) {
		System.out.println("인가코드 : "+code);
		String token = userService.getKakaoAccessToken(code);
		Map<String, String> map = userService.createKakaoUser(token);
		session.setAttribute("id", map.get("id"));
		session.setAttribute("name", "good");

		return "/index";
	}
	
}
