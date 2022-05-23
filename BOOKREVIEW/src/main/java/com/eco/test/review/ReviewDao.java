package com.eco.test.review;

import org.mybatis.spring.SqlSessionTemplate;

public interface ReviewDao {

	int insertRevice(ReviewVo rv, SqlSessionTemplate sqlSession);


}
