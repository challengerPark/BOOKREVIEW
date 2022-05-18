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
	private int bookNo;
	private int memberNo;
	private String reviewTitle;
	private String reviewImportent;
	private String reviewContent;
	private String reviewFeel;
	private Date reviewDate;
	private int checkNo;
	
}
