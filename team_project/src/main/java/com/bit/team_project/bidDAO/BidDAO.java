package com.bit.team_project.bidDAO;

import java.util.Map;

import com.bit.team_project.DTO.BidDTO;

public interface BidDAO {

	public void set(BidDTO bidDTO);

	public void bidGet(Map<String, String> map);
	
}
