package com.eco.test.member;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.eco.test.list.PageVo;
import com.eco.test.notice.NoticeVo;
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

	@Override
	public int changePwd(MemberVo member, SqlSessionTemplate sqlSession) {
		return sqlSession.update("memberMapper.changePwd", member);
	}

	@Override
	public List<ReviewVo> getClassReviews(MemberVo loginMember,SqlSessionTemplate sqlSession) {
		return sqlSession.selectList("reviewMapper.getClassReviews",loginMember);
	}
	
	@Override
	public int insertTeacher(MemberVo member, SqlSessionTemplate sqlSession) {
		return sqlSession.insert("memberMapper.insertTeacher", member);
	}

	@Override
	public List<MemberVo> selectTeacherList(PageVo pv,SqlSessionTemplate sqlSession) {
		return sqlSession.selectList("memberMapper.selectTeacherList",pv);
	}

	@Override
	public int updateTeacher(MemberVo member, SqlSessionTemplate sqlSession) {
		return  sqlSession.update("memberMapper.updateTeacher", member);
	}

	@Override
	public int deleteTeacher(MemberVo member, SqlSessionTemplate sqlSession) {
		return  sqlSession.delete("memberMapper.deleteTeacher", member);
	}

	@Override
	public int countTeacher( SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("memberMapper.countTeacher");
	}
	
	@Override
	public int getNewInpT(MemberVo loginMember, SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("reviewMapper.getClassReviewsCount",loginMember);
	}
	
	@Override
	public List<NoticeVo> noticeTitles(SqlSessionTemplate sqlSession) {
		return sqlSession.selectList("memberMapper.noticeTitles");
	}
}
