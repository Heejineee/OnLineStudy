<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.manager.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="mgr" class="com.sist.manager.BoardManager"/>
<%
	// BoardManager로 request를 전송하면 => 처리 => 결과값을 jsp로 전송
	// JSP : 요청한 결과값 출력만 담당(View)
	// 처리 => Java로 처리
	mgr.boardUpdate(request);
%>
<c:choose>

</c:choose>