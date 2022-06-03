package com.eco.test.member;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}
