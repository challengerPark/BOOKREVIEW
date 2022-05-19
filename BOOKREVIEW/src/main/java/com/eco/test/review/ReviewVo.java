package com.eco.test.review;

import java.util.Date;



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
	
	
	public ReviewVo() {
		super();
	}

	public ReviewVo(int reviewNo, int bookNo, int memberNo, String reviewTitle, String reviewImportent,
			String reviewContent, String reviewFeel, Date reviewDate, int checkNo) {
		super();
		this.reviewNo = reviewNo;
		this.bookNo = bookNo;
		this.memberNo = memberNo;
		this.reviewTitle = reviewTitle;
		this.reviewImportent = reviewImportent;
		this.reviewContent = reviewContent;
		this.reviewFeel = reviewFeel;
		this.reviewDate = reviewDate;
		this.checkNo = checkNo;
	}

	public int getReviewNo() {
		return reviewNo;
	}

	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}

	public int getBookNo() {
		return bookNo;
	}

	public void setBookNo(int bookNo) {
		this.bookNo = bookNo;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
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

	public int getCheckNo() {
		return checkNo;
	}

	public void setCheckNo(int checkNo) {
		this.checkNo = checkNo;
	}

	@Override
	public String toString() {
		return "ReviewVo [reviewNo=" + reviewNo + ", bookNo=" + bookNo + ", memberNo=" + memberNo + ", reviewTitle="
				+ reviewTitle + ", reviewImportent=" + reviewImportent + ", reviewContent=" + reviewContent
				+ ", reviewFeel=" + reviewFeel + ", reviewDate=" + reviewDate + ", checkNo=" + checkNo + "]";
	}
	
	
	
}
