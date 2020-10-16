<%@page import="com.sist.dao.DataBoardDAO"%>
<%@page import="com.sist.dao.DataBoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	// 한글 변환 (전송 : 인코딩, 수신 : 디코딩)
	String name=request.getParameter("name");
	String no=request.getParameter("no");
	String subject=request.getParameter("subject");
	String content=request.getParameter("content");
	String pwd=request.getParameter("pwd");
	
	DataBoardVO vo=new DataBoardVO();
	vo.setName(name);
	vo.setNo(Integer.parseInt(no));
	vo.setSubject(subject);
	vo.setContent(content);
	vo.setPwd(pwd);
	
	// DAO로 전송해서 처리
	boolean bCheck=DataBoardDAO.boardUpdate(vo);
	if(bCheck==true)
	{
		response.sendRedirect("../main/main.jsp?mode=3&no="+no);
	}
	else
	{
%>
		<script>
			alert("비밀번호가 틀립니다!");
			history.back();
		</script>
<%
	}
%>