package com.eco.test.member;


public class MemberVo {

	
	private int memberNo;
	private String memberId;
	private String memberPwd;
	private String memberName;
	private int memberGrade;
	private int memberClass;
	private int memberClassNo;
	private String memberImg;
	private int levelNo;
	
	public MemberVo() {
		super();
	}

	public MemberVo(int memberNo, String memberId, String memberPwd, String memberName, int memberGrade,
			int memberClass, int memberClassNo, String memberImg, int levelNo) {
		super();
		this.memberNo = memberNo;
		this.memberId = memberId;
		this.memberPwd = memberPwd;
		this.memberName = memberName;
		this.memberGrade = memberGrade;
		this.memberClass = memberClass;
		this.memberClassNo = memberClassNo;
		this.memberImg = memberImg;
		this.levelNo = levelNo;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getMemberPwd() {
		return memberPwd;
	}

	public void setMemberPwd(String memberPwd) {
		this.memberPwd = memberPwd;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public int getMemberGrade() {
		return memberGrade;
	}

	public void setMemberGrade(int memberGrade) {
		this.memberGrade = memberGrade;
	}

	public int getMemberClass() {
		return memberClass;
	}

	public void setMemberClass(int memberClass) {
		this.memberClass = memberClass;
	}

	public int getMemberClassNo() {
		return memberClassNo;
	}

	public void setMemberClassNo(int memberClassNo) {
		this.memberClassNo = memberClassNo;
	}

	public String getMemberImg() {
		return memberImg;
	}

	public void setMemberImg(String memberImg) {
		this.memberImg = memberImg;
	}

	public int getLevelNo() {
		return levelNo;
	}

	public void setLevelNo(int levelNo) {
		this.levelNo = levelNo;
	}

	@Override
	public String toString() {
		return "MemberVo [memberNo=" + memberNo + ", memberId=" + memberId + ", memberPwd=" + memberPwd
				+ ", memberName=" + memberName + ", memberGrade=" + memberGrade + ", memberClass=" + memberClass
				+ ", memberClassNo=" + memberClassNo + ", memberImg=" + memberImg + ", levelNo=" + levelNo + "]";
	}
	
	
	
	
}
