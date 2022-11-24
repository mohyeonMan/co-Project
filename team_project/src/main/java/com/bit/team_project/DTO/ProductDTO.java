package com.bit.team_project.DTO;

import java.util.List;


import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;

@Setter@Getter
public class ProductDTO {
	private String subject;
	private String category_1;
	private String category_2;
	private String content;
	private int hopeprice;
	private int startprice;
	private int nowprice;
	private int unitprice;
	private int trade_way;
	private int enddays_year;
	private int enddays_month;
	private int enddays_day;
	private int enddays_hour;
	private int enddays_min;
	private String id;
	private int product_seq;
	private List<MultipartFile> file;
	private String img1;
	private String img2;
	private String img3;
	private String img4;
	private int hit;
	private String endDay;
	private String endTime;
	private String endDate;
}
