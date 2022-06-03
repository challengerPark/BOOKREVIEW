package com.eco.test.member;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.eco.test.review.ReviewVo;

@Repository
public class MemberDaoImpl implements MemberDao{

	
	@Override
	public MemberVo loginMember(MemberVo m, SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("memberMapper.loginMember",m);
	}

	@Override
	public int insertMember(MemberVo m, SqlSessionTemplate sqlSession) {
		return sqlSession.insert("memberMapper.insertMember",m);
	}

	@Override
	public int idCheck(String checkId, SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("memberMapper.idCheck",checkId);
	}
	
	@Override
	public List<ReviewVo> getNoticeList(int userNo ,SqlSessionTemplate sqlSession) {
		return sqlSession.selectList("reviewMapper.getReviwList",userNo);
	}

	@Override
	public int getNewInp(int userNo,SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("reviewMapper.getNewImp",userNo);
	}

	
}
