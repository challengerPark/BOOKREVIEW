package com.eco.test.review;

import java.sql.Date;

public class ReviewVo {

	private int reviewNo;
	private String reviewTitle;
	private String reviewImportent;
	private String reviewContent;
	private String reviewFeel;
	private Date reviewDate;
	private String bookImg;
	private String bookName;
	private String bookWriter;
	private String bookCompany;
	private int checkNo;
	private int memberNo;
	public ReviewVo() {
		super();
	}
	public ReviewVo(int reviewNo, String reviewTitle, String reviewImportent, String reviewContent, String reviewFeel,
			Date reviewDate, String bookImg, String bookName, String bookWriter, String bookCompany, int checkNo,
			int memberNo) {
		super();
		this.reviewNo = reviewNo;
		this.reviewTitle = reviewTitle;
		this.reviewImportent = reviewImportent;
		this.reviewContent = reviewContent;
		this.reviewFeel = reviewFeel;
		this.reviewDate = reviewDate;
		this.bookImg = bookImg;
		this.bookName = bookName;
		this.bookWriter = bookWriter;
		this.bookCompany = bookCompany;
		this.checkNo = checkNo;
		this.memberNo = memberNo;
	}
	
	
	
	public int getReviewNo() {
		return reviewNo;
	}
	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}
	public String getReviewTitle() {
		return reviewTitle;
	}
	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}
	public String getReviewImportent() {
		return reviewImportent;
	}
	public void setReviewImportent(String reviewImportent) {
		this.reviewImportent = reviewImportent;
	}
	public String getReviewContent() {
		return reviewContent;
	}
	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}
	public String getReviewFeel() {
		return reviewFeel;
	}
	public void setReviewFeel(String reviewFeel) {
		this.reviewFeel = reviewFeel;
	}
	public Date getReviewDate() {
		return reviewDate;
	}
	public void setReviewDate(Date reviewDate) {
		this.reviewDate = reviewDate;
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
	public String getBookCompany() {
		return bookCompany;
	}
	public void setBookCompany(String bookCompany) {
		this.bookCompany = bookCompany;
	}
	public int getCheckNo() {
		return checkNo;
	}
	public void setCheckNo(int checkNo) {
		this.checkNo = checkNo;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	@Override
	public String toString() {
		return "ReviewVo [reviewNo=" + reviewNo + ", reviewTitle=" + reviewTitle + ", reviewImportent="
				+ reviewImportent + ", reviewContent=" + reviewContent + ", reviewFeel=" + reviewFeel + ", reviewDate="
				+ reviewDate + ", bookImg=" + bookImg + ", bookName=" + bookName + ", bookWriter=" + bookWriter
				+ ", bookCompany=" + bookCompany + ", checkNo=" + checkNo + ", memberNo=" + memberNo + "]";
	}
	
	
	
	
	
}
