<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.manager.*" %>
<jsp:useBean id="mgr" class="com.sist.manager.BoardManager"/>
<%
	// DAO로부터 전에 입력한 데이터 읽기
	mgr.boardUpdateData(request);	
	// BoardManager가 request에 결과값을 보내준다
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
.row {
	margin:0px auto;
	width:700px;
}
h1 {
	text-align:center;
}
</style>
</head>
<body>
	<div class="row">
		<h1 class="text-center">수정하기</h1>
		 <form method="post" action="update_ok.jsp">
   <table class="table table-hover">
     <tr>
       <th class="danger text-right" width=15%>이름</th>
       <td width=85%>
         <input type=text name=name size=15 class="input-sm">
         <input type=hidden name=no value="${vo.no }">
         <!-- 
         		${param.no} == request.getParameter("no")
          -->
         <%--
         	detail.jsp ==> 게시물 번호 넘긴다
         	update.jsp에서 저장하고 있다가 update_ok.jsp로 보냄
          --%>
       </td>
     </tr>
     <tr>
       <th class="danger text-right" width=15%>제목</th>
       <td width=85%>
         <input type=text name=subject size=45 class="input-sm">
       </td>
     </tr>
     <tr>
       <th class="danger text-right" width=15%>내용</th>
       <td width=85%>
         <textarea rows="10" cols="50" name=content></textarea>
       </td>
     </tr>
     <tr>
       <th class="danger text-right" width=15%>비밀번호</th>
       <td width=85%>
         <input type=password name=pwd size=10 class="input-sm">
       </td>
     </tr>
     <tr>
       <td colspan="4" class="text-right">
         	<a href="update.jsp?no=${vo.no }" class="btn btn-xs btn-success">수정</a>
         	<a href="#" class="btn btn-xs btn-info">삭제</a>
         	<a href=""></a>
       </td>
     </tr>
   </table>
   </form>
  </div>
</body>
</html>
