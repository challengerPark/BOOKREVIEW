package com.eco.test.book;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Builder
public class BookVo {

	private int bookNo;
	private String bookName;
	private String creater;
	private String company;
	
	
}
