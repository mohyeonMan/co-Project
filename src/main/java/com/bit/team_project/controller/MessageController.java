package com.bit.team_project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit.team_project.DTO.SoketDTO;
import com.bit.team_project.productService.ProductService;

@Controller
@RequestMapping(value = "message")
public class MessageController {
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = "messageList")
	public String messageList() {
		return "/message/messageList";
	}
	
	@PostMapping(value = "/getMessageList")
	@ResponseBody
	public List<SoketDTO> getMessageList(@RequestParam String id){
		return productService.getMessageList(id);
	}
}
