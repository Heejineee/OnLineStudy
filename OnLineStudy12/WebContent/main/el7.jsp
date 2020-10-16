<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
	core : 변수설정, 제어문, 화면이동
	fmt : format => 날짜 변환 ==> 오라클 => TO_CHAR
 --%>
 <%
 	String id="admin";
 	String admin="y";
 %>
 <c:set var="id" value="<%=id %>"/>
 <%--
 		request.setAttribute("id", "admin"); => request.getAttribute("id")
  --%>
 <c:set var="admin" value="<%=admin %>"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>EL연산자 논리 연산자(&&, ||, !)</h1>
	<c:if test="${ id=='admin' && admin=='y' }">
		<b>관리자 입니다</b>
	</c:if>
	<c:if test="${ !(id=='admin' && admin=='y' )}">
		<b>일반 유저 입니다</b>
	</c:if>
	<c:set var="sex" value="1"/>
	<!-- 삼항연산자 -->
	${sex==1?"남자":"여자" }
</body>
</html>










