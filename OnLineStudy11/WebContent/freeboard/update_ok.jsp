<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.dao.*"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%-- 메모리 할당(BoardVO)
		BoardVO vo=new BoardVO();
--%>
<jsp:useBean id="vo" class="com.sist.dao.BoardVO">
	<%-- vo가 가지고 있는 setXxx()에 모든 값을 채운다 --%>
	<jsp:setProperty name="vo" property="*"/>
</jsp:useBean>
<%
	boolean bCheck=BoardDAO.freeBoardUpdate(vo);
	if(bCheck==true)
	{
		response.sendRedirect("../main/main.jsp?mode=11&no="+vo.getNo());
	}
	else
	{
%>
	<script>
		alert("비밀번호가 틀립니다!");
		history.back();	// 원래 상태로 복귀(update.jsp로 다시 이동)
	</script>
<%
	}
%>