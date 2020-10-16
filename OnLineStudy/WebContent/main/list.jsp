<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*, com.sist.dao.*" %>
<%
	EmpDAO dao=new EmpDAO();
	ArrayList<MovieVO> list=dao.movieListData();			
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="table1.css">
</head>
<body>
	<center>
		<h1>영화목록</h1>
		<table id="table_content" width=900>
			<tr>
				<th>번호</th>
				<th></th>
				<th>제목</th>
				<th>감독</th>
				<th>출연</th>
				<th>장르</th>
			</tr>
			<%
				for(MovieVO vo:list)
				{
			%>
			<tr class="dataTr">
				<td align=center><%=vo.getMno() %></td>
				<td align=center>
					<img src="<%=vo.getPoster() %>" width=35  height=35>
				</td>
				<td><%=vo.getDirector() %></td>
				<td><%=vo.getActor() %></td>
				<td><%=vo.getActor() %></td>
				<td><%=vo.getGenre() %></td>
			</tr>
			<%
				}
			%>
		</table>
	</center>
</body>
</html>