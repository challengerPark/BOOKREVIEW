package com.eco.test.member;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDaoImpl implements MemberDao{

	
	@Override
	public MemberVo loginMember(MemberVo m, SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("memberMapper.loginMember",m);
	}
	
}
