package com.eco.test.member;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

public interface MemberDao {
	
	MemberVo loginMember(MemberVo m, SqlSessionTemplate sqlSession);

}
