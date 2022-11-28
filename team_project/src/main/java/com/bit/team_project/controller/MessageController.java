package com.bit.team_project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "message")
public class MessageController {
	
	@RequestMapping(value = "messageList")
	public String messageList() {
		return "/message/messageList";
	}
}
