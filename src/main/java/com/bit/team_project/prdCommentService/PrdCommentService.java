package com.bit.team_project.prdCommentService;

import java.util.List;

import org.springframework.ui.ModelMap;

import com.bit.team_project.DTO.PrdCommentDTO;

public interface PrdCommentService {

	public List<PrdCommentDTO> getComment(ModelMap modelMap);

	public void commentSet(ModelMap modelMap);

	public void updateComment(ModelMap modelMap);

	public void deleteComment(ModelMap modelMap);

}
