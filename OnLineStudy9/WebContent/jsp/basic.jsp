<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- basic.jsp
		1. application 객체
			ServletContext의 객체명
			= 서버와 관련
				서버에 대한 정보
			= 로그정보 (log())
			= 디렉토리 정보 (getRealPath()) => 톰캣이 읽어가는 실제 경로명
			= 서버 파일을 읽을 수 있는 권한(web.xml) => 서블릿 등록, 에러 등록
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- Application 객체 : 서버 정보
			서버 관련 메소드
				getServerInfo() : 서버의 이름을 가지고 올 때 => Tomcat8.5  --%>
	<center>
		<h1>서버 정보</h1>
		<ul>
			<li>서버정보 : <%=application.getServerInfo()%></li>
			<li>메이저 : <%=application.getMajorVersion() %></li>
			<li>마이너 : <%=application.getMinorVersion() %></li>
 		</ul>
 		<h1>web.xml에 존재하는 데이터베이스 정보를 출력</h1>
 		<ul>
 			<li>데이터베이스(Driver) : <%=application.getInitParameter("driver") %></li>
 			<li>데이터베이스(URL) : <%=application.getInitParameter("url") %></li>
 			<li>데이터베이스(USERNAME) : <%=application.getInitParameter("hr") %></li>
 			<li>데이터베이스(Password) : <%=application.getInitParameter("password") %></li>
 		</ul>
 		<%
 			String driver=application.getInitParameter("driver");
 			String url=application.getInitParameter("url");
 			String username=application.getInitParameter("username");
 			String password=application.getInitParameter("password");
 			
 			application.log("driver : "+driver);
 			application.log("url : "+url);
 			application.log("username : "+username);
 			application.log("password : "+password);
 		%>
	</center>
</body>
</html>











