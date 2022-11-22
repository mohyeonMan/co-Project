package com.bit.team_project.productDAO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.team_project.DTO.BidDTO;

@Repository
public class BidDAOMybatis implements BidDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void setBid(BidDTO bidDTO) {
		sqlSession.insert("productSQL.productWrite", bidDTO);
	}
	
	

}
