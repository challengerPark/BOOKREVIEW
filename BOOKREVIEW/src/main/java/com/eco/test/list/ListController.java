package com.eco.test.list;


import java.util.HashMap;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.eco.test.member.MemberVo;



@Controller
public class ListController {
	
	@Autowired
	private ListService listService;
	
	
	// 박종혁 작성 학생용 독후감 리스트
	
		@RequestMapping(value= {"studentReviewList.re/checkNo={checkNo}&currentPage={page}","studentReviewList.re"})
		public ModelAndView studentReviewList(@RequestParam(value="currentPage",required =false, defaultValue="1") int currentPage,
											  @RequestParam(value="checkNo", required =false, defaultValue="0") int checkNo 
											  ,ModelAndView mv,HttpSession session) {
			
			
			int memberNo = (((MemberVo)session.getAttribute("loginMember")).getMemberNo());

			HashMap<String, Integer> map = new HashMap<>();
			
			map.put("memberNo", memberNo);
			map.put("checkNo", checkNo);
			
			int listCount = listService.listCount(map);
			
			System.out.println(listCount);

			
			PageVo pv = new PageVo(currentPage, 10, 10, listCount);
			
			map.put("startRow", pv.getStartRow());
			map.put("endRow", pv.getEndRow());
			
			List<ListVo> list = listService.studentList(map);
			
			System.out.println(list);
			
			
			mv.addObject("pv",pv).addObject("list",list).addObject("checkNo", checkNo).setViewName("list/bookListForStudent");
			
			return mv;
			
		}
		
		@RequestMapping(value= {"list.re/page={page}&checkNo={checkNo}","list.re"})
		public ModelAndView  teacherList(ModelAndView mv,HttpSession session, ListVo list,  
				@RequestParam(value="page",required =false, defaultValue="1") int page,
				@RequestParam(value="checkNo", required =false, defaultValue="0") int checkNo){
		
				MemberVo m = (MemberVo)session.getAttribute("loginMember");
				int memberClass= ((MemberVo)session.getAttribute("loginMember")).getMemberClass();
				int memberGrade= ((MemberVo)session.getAttribute("loginMember")).getMemberGrade();

				ListVo listTest= new ListVo();
				listTest.setCheckNo(checkNo);
				listTest.setMemberClass(memberClass); 
				listTest.setMemberGrade(memberGrade);
	
				//페이징 객체 필요함
				int cntPerPage = 10; //한 페이지당 *개씩 보여주기
				int pageBtnCnt = 5;  //한번에 보여줄 페이지버튼 갯수
				int totalRow = listService.getReviewCntT(listTest);
				PageVo vo = new PageVo(page, cntPerPage, pageBtnCnt, totalRow);

				HashMap<String, Integer> map = new HashMap<>();
				map.put("memberGrade", listTest.getMemberGrade());
				map.put("memberClass", listTest.getMemberClass());
				map.put("checkNo",listTest.getCheckNo());
				map.put("startRow", vo.getStartRow());
				map.put("endRow", vo.getEndRow());
				
				
				List<ListVo> allList = listService.getReviewListT(map);

				System.out.println(allList);
				
				mv.addObject("list", allList).addObject("checkNo",checkNo).addObject("page", vo).setViewName("list/bookListForTeacher");

				
				return mv;
			
		
		}
		
		/*선생용 디테일*/
		
		@RequestMapping(value= {"teacherDetail.me/{reviewNo}","teacherDetail.me"}, method=RequestMethod.GET)
		public ModelAndView  teacherDetail (ModelAndView mv, HttpSession session, @RequestParam(value="reviewNo") int reviewNo) {
			
			ListVo list = listService.teacherDetail(reviewNo);
			System.out.println(list);
			
			String[] importent = list.getReviewImportent().split(",");
			
	
			mv.addObject("list",list);
			mv.addObject("importent", importent);
			mv.setViewName("list/ReviewDetailT");

			
			return mv;
		}
		

		
		/*선생님 독서록 상태변경 (update)*/
		@RequestMapping(value= {"teacherUpdate.me/{checkNo}&{reviewNo}","teacherUpdate.me"},method=RequestMethod.GET)
		public String teacherUpdate(@RequestParam(value="checkNo") int checkNo,
				@RequestParam(value="reviewNo") int reviewNo) {
			
			
			HashMap<String, Integer> map=new HashMap<>();
			map.put("reviewNo",reviewNo);
			map.put("checkNo", checkNo);
			
			listService.teacherUpdate(map);
			
			
			return "redirect:/list.re";
			
		}
	



	
}
