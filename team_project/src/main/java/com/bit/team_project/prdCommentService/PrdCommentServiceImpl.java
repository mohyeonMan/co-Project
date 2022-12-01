package com.bit.team_project.prdCommentService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

import com.bit.team_project.DTO.PrdCommentDTO;
import com.bit.team_project.prdCommentDAO.PrdCommentDAO;
@Service
public class PrdCommentServiceImpl implements PrdCommentService {
	@Autowired
	private PrdCommentDAO prdCommentDAO;
	
	@Override
	public List<PrdCommentDTO> getComment(ModelMap modelMap) {
		return prdCommentDAO.getComment(modelMap);
	}

	@Override
	public void commentSet(ModelMap modelMap) {
		prdCommentDAO.commentSet(modelMap);
		
	}

	@Override
	public void updateComment(ModelMap modelMap) {
		prdCommentDAO.updateComment(modelMap);
		
	}

	@Override
	public void deleteComment(ModelMap modelMap) {
		prdCommentDAO.deleteComment(modelMap);
		
	}

}
