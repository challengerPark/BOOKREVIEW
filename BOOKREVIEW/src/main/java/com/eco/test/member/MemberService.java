package com.eco.test.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.eco.test.review.ReviewVo;

public interface MemberService {

	MemberVo loginMember(MemberVo m);

	int insertMember(MemberVo m);

	int idCheck(String checkId);
	
	List<ReviewVo> getNoticeList(int userNo);

	int getNewInp(int userNo);



}
