package com.bit.team_project.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit.team_project.DTO.BidDTO;
import com.bit.team_project.DTO.UserDTO;
import com.bit.team_project.userService.UserService;

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
	public String write(@ModelAttribute UserDTO userDTO) {
		userService.write(userDTO);
		return "/";
	}
	@GetMapping(value = "myPage")
	public String myPage() {
		return "/user/myPage";
	}
	@GetMapping(value = "myBidList")
	public String myBidList() {
		return "/user/myBidList";
	}
	@PostMapping(value = "getMyBidList")
	@ResponseBody
	public List<BidDTO> getMyBidList(@RequestParam String id) {
		Map<String, String>map = new HashMap<String, String>();
		map.put("id",id);
		return userService.getMyBidList(map);
	}
	@PostMapping(value = "getUserDetail")
	@ResponseBody
	public UserDTO getUserDetail(@RequestParam String id) {
		Map<String, String>map = new HashMap<String, String>();
		map.put("id",id);
		return userService.getUserDetail(map);
	}
	@PostMapping(value = "getMyBidList1")
	@ResponseBody
	public List<BidDTO> getMyBidList1(@RequestParam String id) {
		Map<String, String>map = new HashMap<String, String>();
		map.put("id",id);
		return userService.getMyBidList1(map);
	}
	@PostMapping(value = "getMyBidList2")
	@ResponseBody
	public List<BidDTO> getMyBidList2(@RequestParam String id) {
		Map<String, String>map = new HashMap<String, String>();
		map.put("id",id);
		return userService.getMyBidList2(map);
	}
	
}