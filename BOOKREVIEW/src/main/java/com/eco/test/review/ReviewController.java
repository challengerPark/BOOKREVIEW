package com.eco.test.review;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.eco.test.member.MemberVo;

@Controller
public class ReviewController {

	
		@Autowired
		private ReviewService reviewService;
	
		//리뷰 등록 박종혁 작성
		
		@ResponseBody
		@RequestMapping(value="insertReview",method=RequestMethod.POST)
		public int insertReview(ReviewVo rv, HttpSession session) {
			
		
			rv.setMemberNo(((MemberVo)session.getAttribute("loginMember")).getMemberNo()); 
		

			
			rv.setReviewContent(rv.getReviewContent().replace("\n","<br>"));
			rv.setReviewFeel(rv.getReviewFeel().replace("\n","<br>"));
			
	
			System.out.println(rv);
			
		    int resultReview = reviewService.insertReview(rv);
			
		    return resultReview;

			
			
			
		}
		@RequestMapping(value="test_bookSearch")
		   public String test_bookSearch() {
		      return "review/bookSearch";
		   }
		   
		@RequestMapping(value="test_main1")
		  public String test_main1() {
		      return "member/mainForStudent";
		   }
		   /*test_main1 은 학생용 메인화면(mainForStudent.jsp)이고, test_main2는 교사용 메인화면입니다.*/

		   
		@RequestMapping(value="test_booknote")
		  public String test_booknote() {
		      return "review/bookNote";
		   }
		
		
	
}
