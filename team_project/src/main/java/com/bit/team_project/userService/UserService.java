package com.bit.team_project.userService;

import java.util.Map;

import com.bit.team_project.DTO.UserDTO;

public interface UserService {

	public void write(UserDTO userDTO);

	public String checkId(String id);

	public UserDTO login(Map<String, String> map);

}
