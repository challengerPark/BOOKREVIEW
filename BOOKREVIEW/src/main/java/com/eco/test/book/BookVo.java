package com.eco.test.book;


public class BookVo {

	private int bookNo;
	private String bookImg;
	private String bookName;
	private String bookWriter;
	private String company;
	private String bookInf;
	
	
	public BookVo() {
		super();
	}

	public BookVo(int bookNo, String bookImg, String bookName, String bookWriter, String company, String bookInf) {
		super();
		this.bookNo = bookNo;
		this.bookImg = bookImg;
		this.bookName = bookName;
		this.bookWriter = bookWriter;
		this.company = company;
		this.bookInf = bookInf;
	}

	public int getBookNo() {
		return bookNo;
	}

	public void setBookNo(int bookNo) {
		this.bookNo = bookNo;
	}

	public String getBookImg() {
		return bookImg;
	}

	public void setBookImg(String bookImg) {
		this.bookImg = bookImg;
	}

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public String getBookWriter() {
		return bookWriter;
	}

	public void setBookWriter(String bookWriter) {
		this.bookWriter = bookWriter;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getBookInf() {
		return bookInf;
	}

	public void setBookInf(String bookInf) {
		this.bookInf = bookInf;
	}

	@Override
	public String toString() {
		return "BookVo [bookNo=" + bookNo + ", bookImg=" + bookImg + ", bookName=" + bookName + ", bookWriter="
				+ bookWriter + ", company=" + company + ", bookInf=" + bookInf + "]";
	}
	
	
	
	
}
