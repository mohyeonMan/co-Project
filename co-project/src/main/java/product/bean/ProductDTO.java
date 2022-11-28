package product.bean;

import lombok.Getter;
import lombok.Setter;

@Setter@Getter
public class ProductDTO {
	private String subject; //제목
	private String category; // 분류
	private String content; //내용
	private int hopeprice; // 희망가
	private int startprice; // 시작가
	private int unitprice; // 호가
	private int trade_way; // 거래방법
	private int enddays_year; //종료일
	private int enddays_month;
	private int enddays_day;
	private int enddays_hour;
	private int enddays_min;
	private String id; // memId
	private int product_seq; //매물 코드넘버
	
}
