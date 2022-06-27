package com.eco.test.review;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.eco.test.list.PageVo;
import com.eco.test.member.MemberService;
import com.eco.test.member.MemberVo;
import com.eco.test.notice.NoticeVo;

@Controller
public class ReviewController {

	
		@Autowired
		private ReviewService reviewService;
		
		@Autowired
		private MemberService memberService;
	
		//리뷰 등록 박종혁 작성
		@ResponseBody
		@RequestMapping(value="insertReview.re",method=RequestMethod.POST)
		public int insertReview(ReviewVo rv, HttpSession session) {
			
		
			rv.setMemberNo(((MemberVo)session.getAttribute("loginMember")).getMemberNo()); 
			
			rv.setReviewContent(rv.getReviewContent().replace("\n","&#10;"));
			rv.setReviewFeel(rv.getReviewFeel().replace("\n","&#10;"));
			
	
			System.out.println(rv);
			
		    int resultReview = reviewService.insertReview(rv);
			
		    return resultReview;

			
		}
		// 배미경 작성 책검색 이동
		@RequestMapping(value="bookSearch")
		   public String bookSearch() {
		      return "review/bookSearch";
		   }
		 
		// 박종혁 작성 메인이미지 클릭시 학생 마이페이지로 이동 
		@RequestMapping(value="mainForStudent.me")
		  public String mainForStudent(HttpSession session,Model model) {
				
			int userNo = (((MemberVo)session.getAttribute("loginMember")).getMemberNo());
				
			List<ReviewVo> list = memberService.getNoticeList(userNo);
			
			List<NoticeVo> nlist = memberService.noticeTitles();
			
			model.addAttribute("list", list).addAttribute("nlist", nlist);
			
		    return "member/mainForStudent";
		   }
		   /*mainForStudent 은 학생용 메인화면(mainForStudent.jsp)이고, mainForStudent는 교사용 메인화면입니다.*/

		// 박종혁 작성 메인이미지 클릭 선생 마이페이지로 이동
		@RequestMapping(value="mainForTeacher.me")
		 public String mainForTeacher(MemberVo loginMember, HttpSession session,Model model) {
			
			int memberGrade = (((MemberVo)session.getAttribute("loginMember")).getMemberGrade());
			
			int memberClass = (((MemberVo)session.getAttribute("loginMember")).getMemberClass());
			
			loginMember.setMemberGrade(memberGrade);
			
			loginMember.setMemberClass(memberClass);
			
			List<ReviewVo> list = memberService.getClassReviews(loginMember);
			
			List<NoticeVo> nlist = memberService.noticeTitles();
			
			model.addAttribute("list", list).addAttribute("nlist", nlist);
			
			return "member/mainForTeacher";
		}
		
		
		// 배미경 작성  독후감 작성이동
		@RequestMapping(value="bookNote.re")
		  public String test_booknote() {
		      return "review/bookNote";
		   }
		
		
		
		// 박종혁 작성 독후감 수정페이지 이동
		@RequestMapping(value="changeReviewForm.re")
		public ModelAndView changeReviewForm(ModelAndView mv, int reviewNo) {
			
			ReviewVo review = reviewService.changeReviewForm(reviewNo);
			
			String[] reviewImportent = review.getReviewImportent().split(",");
			
			System.out.println(reviewImportent);
			
			mv.addObject("review",review).addObject("reviewImportent",reviewImportent).setViewName("list/ReviewDetailS");
			return mv;
		}
		
		
		// 박종혁 작성 독후감 수정
		@ResponseBody
		@RequestMapping(value="changeReview.re",method=RequestMethod.POST)
		public int changeReview(ReviewVo rv,HttpSession session) {
			
			
			int result = reviewService.changeReview(rv);
			
			return result;
			
		}
	
}
