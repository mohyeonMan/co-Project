package com.bit.team_project.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit.team_project.DTO.BidDTO;
import com.bit.team_project.bidService.BidService;

@Component
@RequestMapping(value = "bid")
public class BidController {
	@Autowired
	private BidService bidService;
	
	@GetMapping(value = "bidSetForm")
	public String bidSetForm() {
		return "/bid/bidSetForm";
	}
	
	@PostMapping(value="setBid")
	@ResponseBody
	public void setBid(@ModelAttribute BidDTO bidDTO) {
		System.out.println(bidDTO);
		bidService.setBid(bidDTO);
	}
}
