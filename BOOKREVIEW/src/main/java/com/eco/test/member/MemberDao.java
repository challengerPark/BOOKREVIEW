package com.eco.test.member;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.eco.test.review.ReviewVo;

public interface MemberDao {
	
	MemberVo loginMember(MemberVo m, SqlSessionTemplate sqlSession);

	int insertMember(MemberVo m, SqlSessionTemplate sqlSession);

	int idCheck(String checkId, SqlSessionTemplate sqlSession);
	
	List<ReviewVo> getNoticeList(int userNo, SqlSessionTemplate sqlSession);

	int getNewInp(int userNo,SqlSessionTemplate sqlSession);

}
