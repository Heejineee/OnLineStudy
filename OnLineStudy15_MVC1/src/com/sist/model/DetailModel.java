package com.sist.model;

import javax.servlet.http.HttpServletRequest;

public class DetailModel {
	
		public void execute(HttpServletRequest request)
		{
			String msg="DetailModel => Detail.jsp로 값을 전송";
			request.setAttribute("msg", msg);
		}
}
