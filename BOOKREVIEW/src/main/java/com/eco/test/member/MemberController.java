package com.eco.test.member;



import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;



@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	
	@ResponseBody
	@RequestMapping(value="login.me",produces="application/json; charset=utf-8",method=RequestMethod.POST)
	public String loginMember(MemberVo m,HttpSession session) {
		
		
		MemberVo loginMember = memberService.loginMember(m);
		
			session.setAttribute("loginMember", loginMember);

		
			return new Gson().toJson(session);
		
		
		
		
	}
	
}
