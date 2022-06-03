package com.eco.test.member;




import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.eco.test.review.ReviewService;
import com.eco.test.review.ReviewVo;





@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	
	@RequestMapping(value="index")
	public String index() {
		return "redirect:/";
	}
	
	
	
	//박종혁 작성  로그인 
	@RequestMapping(value="login.me",method=RequestMethod.POST)
	public String loginMember(Model model, MemberVo m,HttpSession session) {
		
		
		MemberVo loginMember = memberService.loginMember(m);
		
			
		System.out.println(loginMember);
			
		if(loginMember != null) {
			if(loginMember.getLevelNo() == 2) {
				session.setAttribute("loginMember", loginMember);
				return "member/mainForTeacher";
			}else{
				session.setAttribute("loginMember", loginMember);
			
				int userNo=loginMember.getMemberNo();
				System.out.println(userNo);

				//이상민 작성 리스트 불러오기
				List<ReviewVo> list = memberService.getNoticeList(userNo);
				
				//이상민 작성 리스트 카운트
				int newInp = memberService.getNewInp(userNo);
				
				
				//jstl연결
				model.addAttribute("list", list);
				System.out.println(list);
				
				//책정보 불러오기  아이디 연결해줘야함
			    //
				
				return "member/mainForStudent";
			}
		}else {
			session.setAttribute("loginMiss", 1);
			return "redirect:/";
		}
	
	}
	
	//박종혁 작성 회원가입
	@ResponseBody
	@RequestMapping(value="insert.me",method=RequestMethod.POST)
	public int insertMember(MemberVo m, HttpSession session) {
		
		System.out.println(m);
		
		int insertResult = memberService.insertMember(m);
		
		return insertResult;
		
	}
	
	 
	//박종혁 작성 아이디 중복 체크
	@ResponseBody
	@RequestMapping(value="idCheck.me" ,method=RequestMethod.POST)
	public String idCheck(String checkId) {
		
		System.out.println(checkId);
		
		return memberService.idCheck(checkId) > 0 ? "Y" : "N";
		
	}
	
	
	// 박종혁 작성 회원가입 페이지 이동 
	@RequestMapping(value="join.me")
	public String join() {
		return "member/join";
	}
	
	
	
}
