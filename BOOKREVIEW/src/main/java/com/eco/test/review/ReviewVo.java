package com.eco.test.review;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;


@NoArgsConstructor
@AllArgsConstructor
@Data
@Builder
public class ReviewVo {

	private int reviewNo;
	private String reviewName;
	private String feelGood;
	private String content;
	private String feel;
	private Date createDate;
	private char check;
	
}
