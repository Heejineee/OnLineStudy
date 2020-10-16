package com.sist.model;

import javax.servlet.http.HttpServletRequest;

public class DeleteModel implements model {

	@Override
	public String execute(HttpServletRequest request) {
		request.setAttribute("msg", "삭제하기");
		return "board/delete.jsp";
	}

}
