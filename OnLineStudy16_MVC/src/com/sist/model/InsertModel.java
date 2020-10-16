package com.sist.model;

import javax.servlet.http.HttpServletRequest;
// 글쓰기 요청시 처리
public class InsertModel implements Model {

	@Override
	public String handelRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return "board/insert.jsp";
	}

}
