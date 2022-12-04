package com.bit.team_project.userDAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.collections.map.HashedMap;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;

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
	@Override
	public int getMessageCount(String id) {
		
		return sqlSession.selectOne("userSQL.getMessageCount",id);
	}
	@Override
	public void kakaoWrite(Map<String, String> map) {
		sqlSession.insert("userSQL.kakaoWrite",map);
	}
	@Override
	public void pointCharge(Map<String, String> map) {
		sqlSession.update("userSQL.pointCharge",map);
	}
	@Override
	public UserDTO adminlogintest(ModelMap modelMap) {
		Map<String, String>map = new HashMap<String, String>();
		map.put("id",(String) modelMap.get("id"));
		map.put("pwd",(String) modelMap.get("pwd"));
		return sqlSession.selectOne("userSQL.adminlogintest",map);
	}
	@Override
	public List<UserDTO> getAlluser() {
		return sqlSession.selectList("userSQL.getAlluser");
	}
	@Override
	public void deleteUser(String id) {
		sqlSession.delete("userSQL.deleteUser",id);
	}
	@Override
	public UserDTO checkUser(Map<String, String> map) {
		return sqlSession.selectOne("userSQL.checkUser",map);
	}
	@Override
	public String getMyPoint(Map<String, String> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("userSQL.getMyPoint",map);
		
	}
	
	

}
