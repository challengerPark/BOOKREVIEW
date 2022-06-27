package com.eco.test.review;

import org.mybatis.spring.SqlSessionTemplate;

public interface ReviewDao {

	int insertRevice(ReviewVo rv, SqlSessionTemplate sqlSession);

	ReviewVo changeReviewForm(int reviewNo, SqlSessionTemplate sqlSession);

	int changeReview(ReviewVo rv, SqlSessionTemplate sqlSession);

	

}
