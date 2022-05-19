package com.eco.test.member;

import java.util.HashMap;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class MemberController {

	private MemberService memberService;
	
	
	@ResponseBody
	@RequestMapping(value = "login.me",produces="application/json; charset=utf-8")
	public void login(String memberId,String memberPwd, HttpServletRequest request, Model model) {

        System.out.print(memberId);
        System.out.print(memberPwd);
        
        
		model.put("memberId",memberId);
		model.put("memberPwd",memberPwd);
        
		HttpSession session = request.getSession();
		
		MemberVo loginUser = memberService.login(loginMap);
		
		System.out.print(loginUser);
		
		
		//return loginMap;
	}
	
	
}
