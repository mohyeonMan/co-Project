package com.bit.team_project.prdCommentDAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;

import com.bit.team_project.DTO.PrdCommentDTO;
@Repository("prdCommentMapper")
@Transactional
public class PrdCommentDAOMybatis implements PrdCommentDAO {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<PrdCommentDTO> getComment(ModelMap modelMap) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("prdCommentSQL.getComment",modelMap);
	}

	@Override
	public void commentSet(ModelMap modelMap) {
		sqlSession.insert("prdCommentSQL.commentSet",modelMap);
		
	}

	@Override
	public void updateComment(ModelMap modelMap) {
		sqlSession.insert("prdCommentSQL.updateComment",modelMap);
		
	}

	@Override
	public void deleteComment(ModelMap modelMap) {
		sqlSession.insert("prdCommentSQL.deleteComment",modelMap);
		
	}

}
