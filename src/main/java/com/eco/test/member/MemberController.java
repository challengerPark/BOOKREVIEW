package com.eco.test.member;





import java.text.SimpleDateFormat;
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
import com.eco.test.notice.NoticeService;
import com.eco.test.notice.NoticeVo;
import com.eco.test.review.ReviewService;
import com.eco.test.review.ReviewVo;





@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@Autowired
	private NoticeService noticeService;
	
	SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd");
	
	@RequestMapping(value="index")
	public String index() {
		return "redirect:/";
	}
	
	
	
	//박종혁 작성  로그인 후 페이지 지정
		@RequestMapping(value="login.me",method=RequestMethod.POST)
		public String loginMember(Model model, MemberVo m,HttpSession session,
								  @RequestParam(value="currentPage" ,required=false ,defaultValue="1")int currentPage
								 ) {
			
			
			MemberVo loginMember = memberService.loginMember(m);
			
			
			System.out.println(loginMember);
				
			if(loginMember != null) {
				if(loginMember.getLevelNo() == 2) {
					session.setAttribute("loginMember", loginMember);
					
					List<ReviewVo> list = memberService.getClassReviews(loginMember);
					
					List<NoticeVo> nlist = memberService.noticeTitles();
					System.out.println(list);
					
					int newInpT = memberService.getNewInpT(loginMember);
					System.out.println(newInpT);

					model.addAttribute("list",list);
					model.addAttribute("newInpT",newInpT);
					model.addAttribute("nlist", nlist);
					//까지
					
					return "member/mainForTeacher";
					
					
				}else if(loginMember.getLevelNo() == 1){
					session.setAttribute("loginMember", loginMember);
					int userNo=loginMember.getMemberNo();
					System.out.println(userNo);

					//이상민 작성 리스트 불러오기  // 박종혁 수정있음
					List<ReviewVo> list = memberService.getNoticeList(userNo);
					
					List<NoticeVo> nlist = memberService.noticeTitles();
					
					//이상민 작성 리스트 카운트 // 박종혁 수정
					int newInp = memberService.getNewInp(userNo);
					
					
					model.addAttribute("list", list).addAttribute("newInp", newInp).addAttribute("nlist", nlist);
					System.out.println(list);

					return "member/mainForStudent";
				}else {
					session.setAttribute("loginMember", loginMember);
					
					int listCount = memberService.countTeacher();
					
					PageVo pv = new PageVo(currentPage, 5, 5 , listCount);
					List<MemberVo> result = memberService.selectTeacherList(pv);
					model.addAttribute("result", result).addAttribute("pv",pv);
				
					return "member/mainForMaster";
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
	
	
	// 박종혁 작성 비밀번호 변경
	@ResponseBody
	@RequestMapping(value="changePwd.me" ,method=RequestMethod.POST)
	public int changePwd(HttpSession session,String changePwd, MemberVo member) {
		
		member.setMemberNo(((MemberVo)session.getAttribute("loginMember")).getMemberNo());
		
		member.setMemberPwd(changePwd);
		
		int resultPwd = memberService.changePwd(member);
		
		  return resultPwd;
	}
	
	// 박종혁 작성 로그아웃
	@RequestMapping(value="logout.me")
	public String logout(HttpSession session) {
		
		session.invalidate();
		return "redirect:/";
	}
	
	
	// 배미경 작성 admin에서 교사 계정 추가
		@ResponseBody
		@RequestMapping(value="insertTeacher.me")
		public int insertTeacher(MemberVo member) {
			
			System.out.println(member);
			
			// 성공시 1 실패시 0 반환
			int result = memberService.insertTeacher(member);
				
			return result;
		}
		
		//배미경 작성 admin에서 교사리스트 출력
		@RequestMapping(value= {"selectTeacher.me/currentPage={Page}","selectTeacher.me"})
		public ModelAndView selectTeacherList(
					@RequestParam(value="currentPage",required=false, defaultValue="1")int currentPage,
					ModelAndView mv) {
			
			int listCount = memberService.countTeacher();
			
			PageVo pv = new PageVo(currentPage, 5, 5 , listCount);
			
			List<MemberVo> result = memberService.selectTeacherList(pv);
			
			mv.addObject("result", result).addObject("pv",pv).setViewName("member/mainForMaster");;
			
			return mv;
		}
		
		
		//배미경 작성 admin에서 교사 계정 수정
		@ResponseBody
		@RequestMapping(value="updateTeacher.me")
		public int updateTeacher(MemberVo member) {
			
			System.out.println(member);
			
			int result = memberService.updateTeacher(member);
				
			return result;
		}
		
		//배미경 작성 admin에서 교사 계정 삭제
		@ResponseBody
		@RequestMapping(value="deleteTeacher.me")
		public void deleteTeacher(MemberVo member) {
			int result = memberService.deleteTeacher(member);
			return;
			
		}
	
	
}
