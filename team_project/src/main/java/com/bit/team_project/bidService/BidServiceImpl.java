package com.bit.team_project.bidService;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

import com.bit.team_project.DTO.BidDTO;
import com.bit.team_project.bidDAO.BidDAO;
@Service
public class BidServiceImpl implements BidService {
	@Autowired
	private BidDAO bidDAO;


	@Override
	public void setBid(BidDTO bidDTO) {
		bidDAO.set(bidDTO);
	}

	
}
