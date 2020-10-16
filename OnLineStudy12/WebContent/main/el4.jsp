<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h1>Java로 구구단 출력</h1>
		<table border="1px solid #333" width=560>
			<tr bgcolor=#66e>
				<%
					for(int i=2; i<=9; i++)
					{
				%>
						<th><%=i+"단" %></th>
				<%
					}
				%>
			</tr>
			<%
				for(int i=1; i<=9; i++)
				{
			%>
					<tr>
			<%
					for(int j=2; j<=9; j++)
					{
			%>
						<td><%=j+"*"+i+"="+j*i %></td>
			<%
					}
			%>	
					</tr>
			<%
				}
			%>
		</table>
		<h1>JSTL/EL을 이용한 구구단</h1>
		<table border="1px solid #333" width=560>
			<tr>
				<c:forEach var="i" begin="2" end="9">
					<th>${i }단</th>
				</c:forEach>
			</tr>
			<c:forEach var="i" begin="1" end="9">
				<tr>
					<c:forEach var="j" begin="2" end="9">
						<td>${i }*${j }=${i*j }</td>
					</c:forEach>
				</tr>
			</c:forEach>
		</table>
	</center>
</body>
</html>











