<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
	el.jsp
	EL => Express Language => 화면 출력
	<%= %>
	out.println()
	==> 실무 : 자바, HTML(Web) ==> 분리해서 사용
						  =========
						  자바에서 가지고 오는 데이터 출력
						  (HTML 안에는 자바 데이터를 출력할 수 있는 기능이 없다)
						  => 출력할 수 있는 기능을 제공 ==> EL
						  제어문 (HTML에는 존재 X) => 태그 형식으로 제어문 제공(JSTL)
						  EL + JSTL => 스프링에서는 출력용으로 사용
						  스프링 : 데이터베이스, 기타 자바 기능을 관리
						  출력은 JSP로 출력한다 => EL, JSTL
	==> EL (<% %>는 모든 내용이 사라진다) => <%@ %> ==> 선언문
		=> ${}
		=> ${자바의 일반변수(X)}
		=> ${requestScope.변수} => 1) request 2) application 3) session
 --%>
 <%
 	String name="홍길동";
 	String sex="남자";
 	
 	request.setAttribute("name", name);	// request에 새로운 데이터 추가
 	request.setAttribute("sex", sex);
 	
 	String name1="심청이";
 	String sex1="여자";
 	session.setAttribute("name1", name1);
 	session.setAttribute("sex1", sex1);
 	
 	String name2="신짱구";
 	String sex2="남자";
 	application.setAttribute("name2", name2);
 	application.setAttribute("sex2", sex2);
 	
 	/*
 		request.setAttribute("name", name);
 									 -------- 키 이름
 		=> 출력 할 땐 ==> ${키 이름}
 							==> 원래는 ${requestScope.name}인데 requestScope 생략 가능
 		
 		session.setAttribute("name1", name1);	
 		=> 출력 할 때 ==> ${name1} 혹은 ${sessionScope.name1}
 		
 		application.setAttribute("name2", name2);
 		=> 출력 할 때 ==> ${name1} 혹은 ${applicationScope.name1}
 		
 		적용 순서
 			request => session => application
 			
 			ex)
				request.setAttribute("id", "admin1");
				session.setAttribute("id", "admin2");
				application.setAttribute("id", "admin3");
				
				${id} ==> admin1 (request가 젤 먼저라)
						
			ex)
				session.setAttribute("id", "admin2");
				application.setAttribute("id", "admin3");
				
				${id} ==> admin2 (session이 application보다 먼저라서)
						
			ex)
 				application.setAttribute("id", "admin3");
 				
 				${id} ==> admin3
 					
 		==> 같은 키가 있는 경우 : request => session => application
 	*/
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 데이터 출력 -->
	<b>이름 : <%=name %></b><br>
	<b>성별 : <%out.println(sex); %></b><br>
	<h1>request에 있는 데이터 출력
			(MVC => 자바에서 HTML로 데이터 전송시에 request)</h1>
	이름 : ${name  }<br>	<%-- 키 이름(requestScope가 생략) --%>
	<%-- 자바 변경 --%>
	<%-- 가급적이면 <% %> 사용 X --%>
	이름(자바) : <%=request.getAttribute("name") %><br>
	이름 : ${requestScope.name}<br>
	성별 : ${sex}<br>
	
	<h1>session에 있는 데이터 출력</h1>
	이름 : ${sessionScope.name}<br>
	성별 : ${sessionScope.sex}<br>
	이름 : ${name1}<br>
	성별 : ${sex1}<br>
	
	<h1>application에 있는 데이터 출력</h1>
	이름 : ${applicationScope.name}<br>
	성별 : ${applicationScope.sex}<br>
	이름 : ${name2}<br>
	성별 : ${sex2}<br>
</body>
</html>









