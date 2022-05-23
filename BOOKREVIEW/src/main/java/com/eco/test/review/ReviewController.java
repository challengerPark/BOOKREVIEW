package com.eco.test.review;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.multipart.MultipartFile;

import com.eco.test.member.MemberVo;

@Controller
public class ReviewController {

	
		@Autowired
		private ReviewService reviewService;
	
	
		//리뷰 등록
		public String insertReview(ReviewVo rv, HttpSession session) {
			
			rv.setMemberNo(((MemberVo)session.getAttribute("loginMember")).getMemberNo()); 
			
			int resultReview = 0;
			
			resultReview = reviewService.insertReview(rv);
			
			

			rv.setReviewContent(rv.getReviewContent().replace(System.lineSeparator(), "<br>"));
			
			return "";
		}
		
		
	
}
