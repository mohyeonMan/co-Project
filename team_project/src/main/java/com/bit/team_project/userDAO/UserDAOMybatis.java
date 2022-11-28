package com.bit.team_project.userDAO;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.bit.team_project.DTO.BidDTO;
import com.bit.team_project.DTO.UserDTO;

@Repository("userMapper")
@Transactional
public class UserDAOMybatis implements UserDAO{
	@Autowired
	private SqlSession sqlSession;
	@Override
	public List<BidDTO> getMyBidList(Map<String, String> map) {
		return sqlSession.selectList("userSQL.myBidList",map);
	}
	@Override
	public UserDTO getUserDetail(Map<String, String> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("userSQL.userDetail",map);
	}
	@Override
	public List<BidDTO> getMyBidList1(Map<String, String> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("userSQL.myBidList1",map);
	}
	@Override
	public List<BidDTO> getMyBidList2(Map<String, String> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("userSQL.myBidList2",map);
	}
	@Override
	public void write(UserDTO userDTO) {
		sqlSession.insert("userSQL.write",userDTO);
	}

	@Override
	public String checkId(String id) {
		return sqlSession.selectOne("userSQL.checkId",id)+"";
	}

	@Override
	public UserDTO login(Map<String, String> map) {
		return sqlSession.selectOne("userSQL.login",map);
	}
	@Override
	public void update(UserDTO userDTO) {
		sqlSession.update("userSQL.update",userDTO);
	}

}
