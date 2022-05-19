package com.eco.test.member;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService{

	private MemberDao memberDao;
	
	private SqlSessionTemplate sqlSession;
	
	public MemberVo login(HashMap<String, String> loginMap) {
		return memberDao.login(loginMap,sqlSession);
	}

}
