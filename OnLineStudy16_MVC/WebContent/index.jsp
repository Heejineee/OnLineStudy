<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	response.sendRedirect("list.do");
%>
<!-- 
	1. 화면 변경
		1) request를 초기화 => URL 변경 ==> sendRedirect
		2) request를 공유 => URL 변경 없이 파일 복사 (Ctrl+v forward)
		
	2. 역할
		1) Controller(서블릿) : 요청을 받아서 Model 클래스를 연결
									=> 요청 결과값을 받아서 jsp로 전송(request, session)
		2) Model(자바) : 요청 처리해서 요청 결과값 가지고 온다
		3) View(jsp) : 요청 결과값만 출력
		
	Model을 간단하게 만드는 방법
	
 -->