package com.eco.test.review;

public interface ReviewService {

	int insertReview(ReviewVo rv);

	ReviewVo changeReviewForm(int reviewNo);

	int changeReview(ReviewVo rv);



}
