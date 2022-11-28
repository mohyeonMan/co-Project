package com.bit.team_project.userDAO;

import java.util.Map;

import com.bit.team_project.DTO.UserDTO;

public interface UserDAO {

	public void write(UserDTO userDTO);

	public String checkId(String id);

	public UserDTO login(Map<String, String> map);

}
