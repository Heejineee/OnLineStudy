<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
<%--
	책 6장 에러 페이지
	1) error가 났을 경우에 페이지 이동 ==> errorPage="error.jsp"
	2) error가 났을 경우에 ==> 종류별로 처리
		500, 404 ==> web.xml 이용 처리
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int a=10/0;	// 500 에러 => 지정된 파일 없는 경우 ==> 서버 자체에서 오류 파일 전송
	%>
</body>
</html>