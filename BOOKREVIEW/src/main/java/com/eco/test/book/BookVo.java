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
	private String bookImg;
	private String bookName;
	private String bookWriter;
	private String company;
	private String bookInf;
	
	
	
}
