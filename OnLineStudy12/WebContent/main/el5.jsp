<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.sist.dao.*" %>
<%-- JSTL 사용(제어문) --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--	EmpDAO를 통해 데이터 가지고 온다 --%>
<%
	EmpDAO dao=new EmpDAO();
	List<EmpVO> list=dao.empListData();	// Controller : 데이터를 가지고 와서 => request에 값을 담아서 JSP
%>
<%-- request에 값을 추가 : EL을 이용할 수 있다 --%>
<c:set var="list" value="<%=list %>"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h1>사용 목록</h1>
		<table border="1px solid #333" width=700>
			<tr bgcolor=#ccf>
				<th>사번</th>
				<th>이름</th>
				<th>직위</th>
				<th>입사일</th>
				<th>부서</th>
				<th>근무지</th>
				<th>급여</th>
			</tr>
			<%--
				<%
					for(EmpVO vo:list)
					{
				%>
						<tr>
							<td><%=vo.getEmpno() %></td>
							<td><%=vo.getEname() %></td>
							<td><%=vo.getJob() %></td>
							<td><%=vo.getDbday() %></td>
							<td><%=vo.getDname() %></td>
							<td><%=vo.getLoc() %></td>
							<td><%=vo.getSal() %></td>
						</tr>
				<%
					}
				%>
			 --%>
			<c:forEach var="vo" items="${list }">
			<%-- var="vo" vo 객체 생성 items="실제 데이터를 가지고 온다" --%>
				<tr>
					<%--
					<td>${vo.getEmpno() }</td>
					<td>${vo.getEname() }</td>
					<td>${vo.getJob() }</td>
					<td>${vo.getDbday() }</td>
					<td>${vo.getDname() }</td>
					<td>${vo.getLoc() }</td>
					<td>${vo.getSal() }</td>
					 --%>
					 <td>${vo.empno }</td>
					 <td>${vo.ename }</td>
					 <td>${vo.job }</td>
					 <td>${vo.dbday }</td>
					 <td>${vo.dname }</td>
					 <td>${vo.loc }</td>
					 <td>${vo.sal }</td>
				</tr>
			</c:forEach>
		</table>
	</center>
</body>
</html>









