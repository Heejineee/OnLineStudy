package com.sist.model;

import javax.servlet.http.HttpServletRequest;

	public class FindModel {
		public void execute(HttpServletRequest request)
		{
			String msg="FindModel => Find.jsp로 값을 전송";
			request.setAttribute("msg", msg);
		}
}
