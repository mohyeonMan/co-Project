package com.bit.team_project.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit.team_project.DTO.PrdCommentDTO;
import com.bit.team_project.bidService.BidService;
import com.bit.team_project.prdCommentService.PrdCommentService;

@Component
@RequestMapping(value = "prdComment")
public class PrdCommentController {
	@Autowired
	private PrdCommentService prdCommentService;
	
	@RequestMapping(value = "/getComment")
	@ResponseBody
	public List<PrdCommentDTO> getComment(@RequestParam Map<String, String>map, ModelMap modelMap) {
		modelMap.put("product_seq", map.get("product_seq"));
		prdCommentService.getComment(modelMap);
		return prdCommentService.getComment(modelMap);
	}
	@RequestMapping(value = "/commentSet")
	@ResponseBody
	public void commentSet(@RequestParam Map<String, String>map, ModelMap modelMap) {
		modelMap.put("comment_id", map.get("comment_id"));
		modelMap.put("comment_content", map.get("comment_content"));
		modelMap.put("product_seq", map.get("product_seq"));
		prdCommentService.commentSet(modelMap);
	}
	@RequestMapping(value = "/updateComment")
	@ResponseBody
	public void updateComment(@RequestParam Map<String, String>map, ModelMap modelMap) {
		modelMap.put("comment_seq", map.get("comment_seq"));
		modelMap.put("comment_content", map.get("comment_content"));
		prdCommentService.updateComment(modelMap);
	}
	
	@RequestMapping(value = "/deleteComment")
	@ResponseBody
	public void deleteComment(@RequestParam Map<String, String>map, ModelMap modelMap) {
		modelMap.put("comment_seq", map.get("comment_seq"));
		prdCommentService.deleteComment(modelMap);
	}
}
