<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.manager.*" %>
<jsp:useBean id="mgr" class="com.sist.manager.BoardManager"/>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	mgr.boardDetailData(request);	
	// 자바에서 detail.jsp가 가지고 있는 request에 요청 처리 후에 결과값 담아줌
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
	<div class="container">
		<div class="row">
			<h1>내용보기</h1>
			<table class="table table-striped">
				<tr>
					<th class="text-center danger" width=20%>번호</th>
					<td class="text-center" width=30%>${vo.no }</td>
					<th class="text-center danger" width=20%>작성일</th>
					<td class="text-center" width=30%><fmt:formatDate value="${vo.regdate }" pattern="yyyy-MM-dd"/></td>
				</tr>
				<tr>
					<th class="text-center danger" width=20%>이름</th>
					<td class="text-center" width=30%>${vo.name }</td>
					<th class="text-center danger" width=20%>조회수</th>
					<td class="text-center" width=30%>${vo.hit }</td>
				</tr>
				<tr>
					<th class="text-center danger" width=20%>제목</th>
					<td colspan=3>${vo.subject }</td>
				</tr>
				<tr>
					<td class="text-left" colspan=4 valign=top height=200>
						<pre style="white-space:pre-wrap; border:none; background-color:white">
							${vo.content }
						</pre>
					</td>
				</tr>
				<tr>
					<td colspan=4 class="text-right">
						<a href="#" class="btn btn-sm btn-success">수정</a>
						<a href="#" class="btn btn-sm btn-warning">삭제</a>
						<a href="list.jsp" class="btn btn-sm btn-info">목록</a>
					</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>












