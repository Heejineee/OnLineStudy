package com.sist.model;

import javax.servlet.http.HttpServletRequest;

public class ListModel implements model {

	@Override
	public String execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		request.setAttribute("msg", "게시판 목록");
		return "board/list.jsp";
	}

}