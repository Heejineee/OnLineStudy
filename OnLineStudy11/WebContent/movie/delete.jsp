<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie[] cookies=request.getCookies();
	for(Cookie c:cookies)
	{
		if(c.getName().startsWith("m"))
			{
				c.setMaxAge(0); // 삭제
				response.addCookie(c);
			}
	}
	
	response.sendRedirect("../main/main.jsp");
%>