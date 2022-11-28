package com.bit.team_project.bidDAO;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.bit.team_project.DTO.BidDTO;
@Repository("bidMapper.xml")
@Transactional
public class BidDAOMyBatis implements BidDAO{
	@Autowired
	private SqlSession sqlSession;
	@Override
	public void set(BidDTO bidDTO) {
		sqlSession.insert("bidSQL.setBid",bidDTO);
		
	}
	/*
	 * public BidDTO myBid(String id) {
	 * 
	 * return sqlSession.selectOne("bidSQL.mybid"); }
	 */
	@Override
	public void bidSetHigh(Map<String, String>map) {
		sqlSession.update("bidSQL.bidSetHigh",map);
	}
	@Override
	public String getBidCount(Map<String, String> map) {
		return sqlSession.selectOne("bidSQL.getBidCount",map);
	}

}
