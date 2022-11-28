package com.bit.team_project.userService;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit.team_project.DTO.BidDTO;
import com.bit.team_project.DTO.UserDTO;
import com.bit.team_project.userDAO.UserDAO;
@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDAO userDAO;
	
	
	@Override
	public List<BidDTO> getMyBidList(Map<String, String> map) {
		// TODO Auto-generated method stub
		return userDAO.getMyBidList(map);
	}


	@Override
	public UserDTO getUserDetail(Map<String, String> map) {
		// TODO Auto-generated method stub
		return userDAO.getUserDetail(map);
	}


	@Override
	public List<BidDTO> getMyBidList1(Map<String, String> map) {
		// TODO Auto-generated method stub
		return userDAO.getMyBidList1(map);
	}


	@Override
	public List<BidDTO> getMyBidList2(Map<String, String> map) {
		// TODO Auto-generated method stub
		return userDAO.getMyBidList2(map);
	}

	
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
