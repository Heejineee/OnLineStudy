<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 119page
		pageContext : pageContext 클래스로부터 미리 생성된 객체(내장객체)
		----------------
		페이지 흐름제어 : 특정 부분에 다른 JSP를 첨부 가능 => include
				
--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
		<table border=1 bordercolor=black width=700 height=500>
			<tr>
				<td colspan=2 height=100><% pageContext.include("include/header.jsp"); %></td>
			</tr>
			<tr>
				<td width=150><%pageContext.include("include/login.jsp"); %></td>
				<td width=550><%pageContext.include("include/content.jsp"); %></td>
			</tr>
			<tr>
				<td colspan=2 height=100><%pageContext.include("include/footer.jsp"); %></td>
			</tr>
		</table>
	</center>
</body>
</html>