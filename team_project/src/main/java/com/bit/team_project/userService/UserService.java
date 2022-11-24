package com.bit.team_project.userService;

import com.bit.team_project.DTO.UserDTO;

public interface UserService {

	void write(UserDTO userDTO);

	String checkId(String id);

}
