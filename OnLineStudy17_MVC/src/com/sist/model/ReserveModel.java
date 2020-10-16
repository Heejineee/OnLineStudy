package com.sist.model;

import javax.servlet.http.HttpServletRequest;

import com.sist.controller.RequestMapping;

/*
 * 1. 영화목록
 * 2. 극장목록
 * 3. 날짜정보
 * 4. 시간정보
 * 5. 인원정보
 * 6. 예매정보
 */
public class ReserveModel {
	@RequestMapping("reserve/movie.do")
	public String movieList(HttpServletRequest request)
	{
		request.setAttribute("msg", "예매=>영화목록");
		return "../reserve/movie.jsp";
	}
	@RequestMapping("reserve/theater.do")
	public String theaterList(HttpServletRequest request)
	{
		request.setAttribute("msg", "예매=>극장목록");
		return "../reserve/theater.jsp";
	}
}
