package com.bit.team_project.userService;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit.team_project.DTO.UserDTO;
import com.bit.team_project.userDAO.UserDAO;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private UserDAO userDAO;
	
	@Override
	public void write(UserDTO userDTO) {
		userDAO.write(userDTO);
	}

	@Override
	public String checkId(String id) {
		return userDAO.checkId(id);
	}

	@Override
	public UserDTO login(Map<String, String> map) {
		return userDAO.login(map);
	}

}
