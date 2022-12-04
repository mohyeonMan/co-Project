package com.bit.team_project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit.team_project.DTO.SoketDTO;
import com.bit.team_project.productService.ProductService;

@Component
@RequestMapping(value = "test")
public class TestController {
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = "/sideBanner")
	public String sideBanner() {
		return "/test/sideBanner";
	}
	
	@RequestMapping(value = "/soket")
	public String soket() {
		return "/test/soket";
	}
	
	@RequestMapping(value = "/soketSend")
	public String soketSend() {
		return "/test/soketSend";
	}
	
	@PostMapping(value = "/saveNotify")
	@ResponseBody
	public void saveNotify(@ModelAttribute SoketDTO soketDTO) {
		productService.saveNotify(soketDTO);
	}
	
	@RequestMapping(value = "/adminSendMsg")
	public String adminSendMsg() {
		return "/test/adminSendMsg";
	}

}
