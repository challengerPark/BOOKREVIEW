package com.eco.test.member;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.eco.test.list.PageVo;
import com.eco.test.notice.NoticeVo;
import com.eco.test.review.ReviewVo;

public interface MemberDao {
	
	MemberVo loginMember(MemberVo m, SqlSessionTemplate sqlSession);

	int insertMember(MemberVo m, SqlSessionTemplate sqlSession);

	int idCheck(String checkId, SqlSessionTemplate sqlSession);
	
	List<ReviewVo> getNoticeList(int userNo, SqlSessionTemplate sqlSession);

	int getNewInp(int userNo,SqlSessionTemplate sqlSession);

	int changePwd(MemberVo member, SqlSessionTemplate sqlSession);

	List<ReviewVo> getClassReviews(MemberVo loginMember, SqlSessionTemplate sqlSession);
	
	int insertTeacher(MemberVo member, SqlSessionTemplate sqlSession);

	List<MemberVo> selectTeacherList(PageVo pv,SqlSessionTemplate sqlSession);

	int updateTeacher(MemberVo member, SqlSessionTemplate sqlSession);
	
	int deleteTeacher(MemberVo member, SqlSessionTemplate sqlSession);

	int countTeacher(SqlSessionTemplate sqlSession);
	
	int getNewInpT(MemberVo loginMember, SqlSessionTemplate sqlSession);
	
	List<NoticeVo> noticeTitles(SqlSessionTemplate sqlSession);


	
}
