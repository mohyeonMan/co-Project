package com.bit.team_project.productDAO;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.bit.team_project.DTO.ProductDTO;

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
	public List<ProductDTO> getIndexGrid() {
		return sqlSession.selectList("productSQL.getIndexGrid");
	}

}
