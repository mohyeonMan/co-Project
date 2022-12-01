package com.bit.team_project.userDAO;

import java.util.List;
import java.util.Map;
import com.bit.team_project.DTO.BidDTO;
import com.bit.team_project.DTO.UserDTO;

public interface UserDAO {

	public void write(UserDTO userDTO);

	public String checkId(String id);

	public UserDTO login(Map<String, String> map);

	public List<BidDTO> getMyBidList(Map<String, String> map);

	public UserDTO getUserDetail(Map<String, String> map);

	public List<BidDTO> getMyBidList1(Map<String, String> map);

	public List<BidDTO> getMyBidList2(Map<String, String> map);

	public void update(UserDTO userDTO);

	public int getMessageCount(String id);

	public void kakaoWrite(Map<String, String> map);
}
