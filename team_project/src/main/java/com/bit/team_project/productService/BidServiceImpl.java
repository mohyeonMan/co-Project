package com.bit.team_project.productService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit.team_project.DTO.BidDTO;
import com.bit.team_project.productDAO.BidDAO;

@Service
public class BidServiceImpl implements BidService {
	@Autowired
	private BidDAO bidDAO;

	@Override
	public void setBid(BidDTO bidDTO) {
		
		bidDAO.setBid(bidDTO);
	}

}
