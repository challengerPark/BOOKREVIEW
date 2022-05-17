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
	private String password;
	private String year;
	private String classNo;
	private String name;
	private char level;
	
}
