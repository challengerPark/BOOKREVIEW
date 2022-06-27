package com.eco.test.notice;

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

@Controller
public class NoticeController {

	@Autowired
	private NoticeService noticeService;
	
	//김길준 작성 공지사항 생성
	@ResponseBody
	@RequestMapping(value="insertNotice.no",method = RequestMethod.POST)
	public int insertNotice(NoticeVo nv, HttpSession session) {
		
		nv.setNoticeContent(nv.getNoticeContent().replace("\n","&#10;"));
		
		System.out.println(nv);	
		
		int resultNotice = noticeService.insertNotice(nv);
		
		return resultNotice;
		
		
	}
	
	//김길준 작성 공지사항 리스트 조회
	@RequestMapping(value= {"selectNoticeList.no/page={page}","selectNoticeList.no"})
	public ModelAndView selectNoticeList(@RequestParam(value="page", required=false, defaultValue="1")int page,
			ModelAndView nv) {
		
		int listCount = noticeService.listCount();
		
		PageVo pv = new PageVo(page, 5, 5, listCount);
		
		
		List<NoticeVo> result = noticeService.selectNoticeList(pv);
		
		nv.addObject("noList", result).addObject("nv", pv).setViewName("member/mainForMasterNotice");
		
		return nv;
	}
	
	//박종혁 작성 공지사항 삭제
	   @ResponseBody
	   @RequestMapping(value="deleteNotice.no")
	   public int deleteNotice(@RequestParam(value="noticeNo")int noticeNo) {
	      
	      int result = noticeService.deleteNotice(noticeNo);
	      
	      return result;
	   }
	   
	
	@ResponseBody
	@RequestMapping(value="selectNotice.no")
	public NoticeVo selectNotice(@RequestParam(value="noticeNo")int noticeNo) {
		System.out.println(noticeNo);
		
		NoticeVo notice = noticeService.selectNotice(noticeNo);
		
		System.out.println(notice);
		
		return notice;
	}
	
}
