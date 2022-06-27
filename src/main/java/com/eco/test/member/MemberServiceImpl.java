package com.eco.test.member;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eco.test.list.PageVo;
import com.eco.test.notice.NoticeVo;
import com.eco.test.review.ReviewVo;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberDao memberDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public MemberVo loginMember(MemberVo m) {
		return memberDao.loginMember(m,sqlSession);
	}

	@Override
	public int insertMember(MemberVo m) {
		return memberDao.insertMember(m,sqlSession);
	}

	@Override
	public int idCheck(String checkId) {
		return memberDao.idCheck(checkId,sqlSession);
	}


	@Override
	public List<ReviewVo> getNoticeList(int userNo) {
		return memberDao.getNoticeList(userNo,sqlSession);
	}

	@Override
	public int getNewInp(int userNo) {
		return memberDao.getNewInp(userNo,sqlSession);
	}

	@Override
	public int changePwd(MemberVo member) {
		return memberDao.changePwd(member,sqlSession);
	}

	@Override
	public List<ReviewVo> getClassReviews(MemberVo loginMember) {
		return memberDao.getClassReviews(loginMember,sqlSession);
	}
	
	@Override
	public int insertTeacher(MemberVo member) {
		return memberDao.insertTeacher(member,sqlSession);
	}

	@Override
	public List<MemberVo> selectTeacherList(PageVo pv) {
		return memberDao.selectTeacherList(pv,sqlSession);
	}

	@Override
	public int updateTeacher(MemberVo member) {
		return memberDao.updateTeacher(member,sqlSession);
	}

	@Override
	public int deleteTeacher(MemberVo member) {
		return memberDao.deleteTeacher(member, sqlSession);
	}
	
	@Override
	public int countTeacher() {
		return memberDao.countTeacher(sqlSession);
	}
	
	@Override
	public int getNewInpT(MemberVo loginMember) {
		return memberDao.getNewInpT(loginMember,sqlSession);
	}
	
	@Override
	public List<NoticeVo> noticeTitles() {
		return memberDao.noticeTitles(sqlSession);
	}
}
