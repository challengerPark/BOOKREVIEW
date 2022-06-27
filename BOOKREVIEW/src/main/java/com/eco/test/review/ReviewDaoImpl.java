package com.eco.test.review;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class ReviewDaoImpl implements ReviewDao {

	@Override
	public int insertRevice(ReviewVo rv, SqlSessionTemplate sqlSession) {
		return sqlSession.insert("reviewMapper.insertReview",rv);
	}



	@Override
	public ReviewVo changeReviewForm(int reviewNo ,SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("reviewMapper.changeReviewForm",reviewNo);
	}



	@Override
	public int changeReview(ReviewVo rv, SqlSessionTemplate sqlSession) {
		return sqlSession.update("reviewMapper.changeReview", rv);
	}




	
	
}
