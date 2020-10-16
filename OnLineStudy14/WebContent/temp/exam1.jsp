<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 
		JSTL => Java Standard Tag Library : XML형식 
			1. 지원하는 태그와 속성만 사용 가능
			2. 오버라이딩 => 사용자 정의 태그 라이브러리
			3. JSP => View(화면 출력 용도) => if, for, 다중 if
			
			=> 1. core
					<c:set var="변수명(키)" value="값"> : 변수 설정
						=> 자바 변경 ==> request.setAttribute(var에 저장된 키, value에 있는 값);
					<c:if test="조건문">결과값</c:if> : 제어문
						=> 단점 ==> else가 없다(단일 조건문만 사용 가능)
					<c:forEach var="i" begin="1" end="10" step="1">
						=> 자바 변경 ==> for(int i=1(begin); i<=10(end); i++(step))
						=> end는 포함(10까지 포함), step=1일 경우 생략 가능, step에 음수 사용 X
					<c:forEach var="vo" items="배열, ArrayList">
						=> 자바 변경 ==> for(MovieVO vo:list) => for-each문
					<c:choose> : switch, 다중if
						<c:when test="조건문">결과</c:when>
						<c:when test="조건문">결과</c:when>
						<c:when test="조건문">결과</c:when>
						<c:otherwise>해당되는 조건이 없는 경우에 처리</c:otherwise>
					</c:choose>					
					<c:redirect url="이동할 주소"> : URL(화면이동)
						=> 자바 변경 ==> response.sendRedirect(url에 설정된 주소)
						
			=> 2. fmt : 변환
					- 날짜 변환
						<fmt:formatDate value="변경될 날짜 데이터" pattern="">
					- 숫자 변환
						<fmt:formatNumber value="변경할 숫자" pattern="00,000">
			
			=> 3. function(fn) : String 메소드 호출
					length(), substring(), split(), trim(), toUpperCase(),
					toLowerCase(), replace(), indexOf(), startsWith(), endsWith()
--%>
<%-- 변수설정, 제어문, URL : core --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- 날짜변경, 숫자변경 : format --%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%-- String 클래스의 메소드를 사용할 수 있게 만든 라이브러리 --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>












