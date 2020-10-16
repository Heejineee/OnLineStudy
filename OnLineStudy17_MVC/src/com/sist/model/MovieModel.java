package com.sist.model;

import javax.servlet.http.HttpServletRequest;

import com.sist.controller.RequestMapping;

//전체 목록 출력
//상세보기 
public class MovieModel {
	@RequestMapping("movie/list.do")
	public String movieListData(HttpServletRequest request)
	{
		request.setAttribute("msg", "영화목록");
		return "../movie/list.jsp";	// request를 전송할 jsp 파일명
	}
	@RequestMapping("movie/detail.do")
	public String movieDetailData(HttpServletRequest request)
	{
		request.setAttribute("msg", "영화상세보기");
		return "../movie/detail.jsp";	// forward, sendRedirect (jsp => _ok.jsp)
		/*
		 * 	1. 화면에 출력할 내용이 있는 경우 (request를 유지) ==> forward
		 * 	2. 화면에 출력하는 내용이 아닌 경우 (데이터베이스 추가, 수정, 삭제) 
		 * 		==> 수행 후에 sendRedirect() 다른 화면으로 이동
		 * 			ex) insert_ok.jsp ==> list.jsp
		 * 				 login_ok.jsp ==> main.jsp
		 */
	}
}
