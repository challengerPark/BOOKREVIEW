package com.eco.test.member;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Builder
public class MemberVo {

	
	private int memberNo;
	private String memberId;
	private String memberPwd;
	private String memberName;
	private String memberGrade;
	private String memberClass;
	private String memberClassNo;
	private String memberImg;
	private int levelNo;
	
}
