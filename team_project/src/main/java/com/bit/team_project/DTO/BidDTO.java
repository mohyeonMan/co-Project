package com.bit.team_project.DTO;

import lombok.Data;

@Data
public class BidDTO {
	private String subject;
	private String id;
	private int product_seq;
	private int bidprice;
	private String bidtime;
}
