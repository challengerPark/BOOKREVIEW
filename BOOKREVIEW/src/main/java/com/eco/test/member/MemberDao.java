package com.eco.test.member;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

public interface MemberDao {
	
	MemberVo login(HashMap<String, String> loginMap, SqlSessionTemplate sqlSession);

}
