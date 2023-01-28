package com.bit.team_project.bidService;

import java.util.Map;

import org.springframework.ui.ModelMap;

import com.bit.team_project.DTO.BidDTO;

public interface BidService {
	public void setBid(BidDTO bidDTO);

	public void bidSetHigh(Map<String, String> map);

	public String getBidCount(Map<String, String> map);
}
