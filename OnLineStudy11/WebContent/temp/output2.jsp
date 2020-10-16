<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.temp.*" %>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="bean" class="com.sist.temp.MemberBean">
	<jsp:setProperty name="bean" property="*"/>
</jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	이름 : <%=bean.getName() %><br>
	성별 : <%=bean.getSex() %><br>
	나이 : <%=bean.getAge() %><br>
	주소 : <%=bean.getAddr() %><br>
	전화 : <%=bean.getTel() %>
</body>
</html>