<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--
	EL => 표현언어(브라우저 출력)
	방식
		- ${requestScope.id} ==> request.getAttribute("id") => 한개의 JSP에서 사용
			==> 한 번 사용하고 버리는 경우 => request.setAttribute()
		- ${sessionScope.id} ==> session.getAttribute("id") => 프로젝트에 있는 모든 JSP에 사용
			==> 여러개의 JSP에서 공통으로 사용되는 데이터가 있는 경우에 session.setAttribute()
		- ${application.id} ==> application.getAttribute("id")
		
	EL에서 사용하는 연산자 => 제어문(조건문 사용시) 258page
		- 산술연산자
			- + : 순수하게 숫자만 계산(문자열 결합 X)
				${10+10} ==> 20
				${10+"10"} ==> 20
						 ----- 숫자형으로 문자열이 있는 경우 자동으로 Integer.parseInt("10");
				${null+10} ==> 10
					==> null 값인 경우에는 0으로 취급
			- - : 순수하게 숫자만 계산
				${10-10} ==> 0
				${10-"10"} ==> 0
				${null-10} ==> -10 (null은 0으로 취급)
			- / : 0으로 나눌 수 없다, 정수/정수 = 실수 (5/2=2) (5/2=2.5)
			- % : 나머지 (mod)
				${5%2} => 1, %{5 mod 2} => 1
 --%>
 <%
 	Date date=new Date();
 	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
 	String today=sdf.format(date);
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>EL 연산자 사용 +, -, *</h1>
	5+5=${5+5 }<br>
	5+"5"=${5+"5" } <br>
	null+5=${null+5 }
	<h1>EL 연산자 사용 / %</h1>
	5/2=${5/2 }	<%-- 정수/정수=실수 --%>
	5 div 2=${5 div 2 }
	5%2=${5%2 }
	5 mod 2=${5 mod 2 }
<%--
	비교연산자 : 결과값(true/false) => 조건문
		== : 문자열도 ==으로 비교 ${id=='admin'}
			==> ${if eq 'admin'}
		!= : 문자열도 !=으로 비교 ${id !='admin'}
			==> ${id ne 'admin'}
					     ---- not equals
		< : ${7<8} 
			==> ${7 lt 8}
		> : ${7>8}
			==> ${7 gt 8}
		<= : ${7<=8}
			==> ${7 le 8}
		>= : ${7>=8}
			==> ${7 ge 8}
			
	논리연산자
		&& => and
		|| => or
		! => not
 --%>	
 <h1>1~10까지 출력(짝수만)</h1>
 <c:forEach var="i" begin="1" end="10">	<%-- for(int i=1; i<=10; i++> 와 같음 --%>
	<c:if test="${i%2==0 }">	<%-- ==은 eq, !=은 ne로 써도 됨 --%>
		${i }&nbsp;
	</c:if>  	
 </c:forEach>
 <h1>EL에서 문자열 비교</h1>
 <%-- <c:else>는 존재하지 않음 ==> 그래서 c:if 두개로 씀 --%>
 <c:if test="${today=='2020-10-05' }">
 	<b style="color:red">오늘 날짜입니다</b>
 </c:if>
 <c:if test="${today!='2020-10-05' }">
 	<b style="color:red">오늘 날짜가 아닙니다</b>
 </c:if>
 <c:choose>	<!-- 다중 if, 선택 if -->
 	<c:when test="${today=='2020-10-05' }">
 		<b style="color:red">오늘 날짜입니다</b>
 	</c:when>
 	<c:otherwise>
 		<b style="color:red">오늘 날짜가 아닙니다</b>
 	</c:otherwise>
 </c:choose>
</body>
</html>









