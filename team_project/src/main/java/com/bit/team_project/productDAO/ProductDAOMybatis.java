package com.bit.team_project.productDAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.bit.team_project.DTO.ProductDTO;

@Repository
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

}
