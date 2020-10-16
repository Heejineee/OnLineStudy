<%@page import="java.util.StringTokenizer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>
 <%-- tab라이브러리 첨부 --%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Java로 반복문 사용</h1>
	<%
		for(int i=1; i<=10; i++)
		{
	%>
		<%=i %> &nbsp;
	<%
		}
	%>
	<br>
	<h1>JSTL로 반복문 사용</h1>
	<c:forEach var="i" begin="1" end="10" step="1">	<%-- step="1"일 때는 생략 가능 --%>
		${i} &nbsp;
	</c:forEach>
	<br>
	<h1>Java로 단어별 출력(StringTokenizer)</h1>
	<%
		String color="red,blue,yellow,green,white";
		StringTokenizer st=new StringTokenizer(color, ",");
		while(st.hasMoreTokens())
		{
	%>
			<%=st.nextToken()%> 	<br>
	<%
		}
	%>
	<h1>JSTL로 단어별 출력</h1>
	<%-- 변수 선언 --%>
	<c:set var="color" value="red,blue,yellow,green,white"/>
	<c:forTokens var="s" items="${color }" delims=",">
		${s }<br>
	</c:forTokens>
	<h1>JSTL => Java 변경</h1>
	<%
		request.setAttribute("color", "red,blue,yellow,green,white");
		String color1=(String)request.getAttribute("color");
		StringTokenizer st1=new StringTokenizer(color1,",");
		while(st.hasMoreTokens())
		{
	%>
			<%=st.nextToken() %> <br>
	<%
		}
	%>
	<h1>Java로 forEach구문</h1>
	<%
		List<String> names=new ArrayList<String>();
		names.add("짱구");
		names.add("철수");
		names.add("유리");
		names.add("훈이");
		names.add("맹구");
		
		for(String name:names)
		{
	%>
			<%=name %> &nbsp;
	<%
		}
	%>
	<h1>JSTL을 이용한 for-each</h1>
	<c:set var="names" value="<%=names %>"/>
	<c:forEach var="name" items="${names }">
		${name } &nbsp;	
	</c:forEach>
</body>
</html>










