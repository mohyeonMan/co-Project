package com.bit.team_project.productDAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;

import com.bit.team_project.DTO.PrdCommentDTO;
import com.bit.team_project.DTO.ProductDTO;
import com.bit.team_project.DTO.SoketDTO;

@Repository("productMapper")
@Transactional
public class ProductDAOMybatis implements ProductDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void write(ProductDTO productDTO) {
		
		sqlSession.insert("productSQL.productWrite", productDTO);
	}

	@Override
	public List<ProductDTO> getList() {
		return sqlSession.selectList("productSQL.getList");
	}
	
	@Override	
	public ProductDTO getOne(Map<String, String>map) {
		return  sqlSession.selectOne("productSQL.getView",map);
		
	}

	@Override
	public ProductDTO getProductView(int product_seq) {
		
		return sqlSession.selectOne("productSQL.getView", product_seq);
	}

	@Override
	public void updateHit(Map<String, Integer> map) {
		sqlSession.update("productSQL.updateHit",map);
		
	}

	@Override
	public void setPrdStatus() {
		/* sqlSession.update("productSQL.nulltest"); */
		sqlSession.update("productSQL.setPrdStatus");
	}
	
	public List<ProductDTO> getIndexGrid() {
		return sqlSession.selectList("productSQL.getIndexGrid");
	}
	
	public List<ProductDTO> getProductSort(Map<String, String> map) {
		return  sqlSession.selectList("productSQL.getProductSort",map);
	}

	@Override
	public void saveNotify(SoketDTO soketDTO) {
		sqlSession.insert("productSQL.saveNotify", soketDTO);
		
	}

	@Override
	public void commentSet(ModelMap modelMap) {
		sqlSession.insert("productSQL.commentSet",modelMap);
	}

	@Override
	public List<PrdCommentDTO> getComment(ModelMap modelMap) {
		return sqlSession.selectList("productSQL.getComment",modelMap);
	}
	
	@Override
	public List<ProductDTO> getProductNew() {
		return sqlSession.selectList("productSQL.getProductNew");
	}

	@Override
	public List<ProductDTO> getHighList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("productSQL.getHighList");
	}
	@Override
	public List<SoketDTO> getMessageList(String id) {
		return sqlSession.selectList("productSQL.getMessageList",id);
	}

	@Override
	public ProductDTO showGettingPrd() {
		return sqlSession.selectOne("productSQL.gomsg");
	}

	

}
