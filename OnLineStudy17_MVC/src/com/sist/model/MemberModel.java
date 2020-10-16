package com.sist.model;

import javax.servlet.http.HttpServletRequest;

import com.sist.controller.RequestMapping;

// 회원가입
// 로그인
public class MemberModel {
	@RequestMapping("main/main.do")
	public String main_page(HttpServletRequest request)
	{
		return "../main/main.jsp";
	}
	@RequestMapping("member/join.do")
	public String memberJoin(HttpServletRequest request)
	{
		request.setAttribute("msg", "회원가입");
		return "../member/join.jsp";
	}
	@RequestMapping("member/join.do")
	public String memberLogin(HttpServletRequest request)
	{
		request.setAttribute("msg", "로그인");
		return "../member/login.jsp";
	}
}
