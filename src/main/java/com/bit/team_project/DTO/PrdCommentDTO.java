package com.bit.team_project.DTO;

import lombok.Data;

@Data
public class PrdCommentDTO {
	private String comment_id;
	private String comment_content;
	private int product_seq;
	private String logtime;
	private int comment_seq;
	
}
