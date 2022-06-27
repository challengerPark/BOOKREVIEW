package com.eco.test.review;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReviewServiceImpl implements ReviewService {

	@Autowired
	private ReviewDao reviewDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int insertReview(ReviewVo rv) {
		return reviewDao.insertRevice(rv,sqlSession);
	}

	@Override
	public ReviewVo changeReviewForm(int reviewNo) {
		return reviewDao.changeReviewForm(reviewNo, sqlSession);
	}

	@Override
	public int changeReview(ReviewVo rv) {
		return reviewDao.changeReview(rv, sqlSession);
	}


}
