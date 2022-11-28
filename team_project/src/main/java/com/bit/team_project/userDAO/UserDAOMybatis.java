package com.bit.team_project.userDAO;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.bit.team_project.DTO.UserDTO;

@Repository("userMapper")
@Transactional
public class UserDAOMybatis implements UserDAO{
	@Autowired
	private SqlSession sqlSession;
	
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

}
