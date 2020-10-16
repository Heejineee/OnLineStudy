package com.sist.model;

import javax.servlet.http.HttpServletRequest;

public class DetailModel implements model {

	@Override
	public String execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		request.setAttribute("msg", "내용 보기");
		return "board/detail.jsp";
	}

}
