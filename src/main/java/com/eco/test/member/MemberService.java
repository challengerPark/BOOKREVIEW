package com.eco.test.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.eco.test.list.PageVo;
import com.eco.test.notice.NoticeVo;
import com.eco.test.review.ReviewVo;

public interface MemberService {

	MemberVo loginMember(MemberVo m);

	int insertMember(MemberVo m);

	int idCheck(String checkId);
	
	List<ReviewVo> getNoticeList(int userNo);

	int getNewInp(int userNo);

	int changePwd(MemberVo member);

	List<ReviewVo> getClassReviews(MemberVo loginMember);
	
	int insertTeacher(MemberVo member);

	List<MemberVo> selectTeacherList(PageVo pv);

	int updateTeacher(MemberVo member);
	
	int deleteTeacher(MemberVo member);
	
	int countTeacher();
	
	int getNewInpT(MemberVo loginMember);
	
	List<NoticeVo> noticeTitles();

}
