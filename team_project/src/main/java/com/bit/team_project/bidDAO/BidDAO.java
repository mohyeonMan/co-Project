package com.bit.team_project.bidDAO;

import java.util.Map;

import com.bit.team_project.DTO.BidDTO;

public interface BidDAO {

	public void set(BidDTO bidDTO);

	public void bidSetHigh(Map<String, String> map);

	public String getBidCount(Map<String, String> map);
	
}
