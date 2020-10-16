<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.manager.*"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%-- BoardManager 메모리 할당 --%>
<jsp:useBean id="mgr" class="com.sist.manager.BoardManager"/>
<%-- 데이터 받는다 --%>
<%
	mgr.boardListData(request);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<div class="row">
				<h1 class="text-center">자유게시판</h1>
				<table class="table">
					<tr>
						<td>
							<a href="insert.jsp" class="btn btn-sm btn-primary">새글</a>
						</td>
					</tr>
				</table>
				<table class="table table-striped">
					<tr class="danger">
						<th class="text-center" width=10%>번호</th>
						<th class="text-center">제목</th>
						<th class="text-center" width=15%>이름</th>
						<th class="text-center" width=20%>작성일</th>
						<th class="text-center" width=10%>조회수</th>
					</tr>
					<c:forEach var="vo" items="${list }">
						<tr>
							<td class="text-center" width=10%>${vo.no }</td>
							<%--
								${vo.no} => <%=vo.getNo()%>
								EL / JSTL
								
								EL
									1) Scope => 어디에 저장된 데이터
										- requestScope.키명
										- sessionScope.키명
										
									request.setAttribute("id", "admin");
									=> ${requestScope.id} ==> 생략 ${id}
											---------------- 생략
									sessionS.setAttribute("id", "admin");
									=> ${sessionScope.id}
											--------------- request에 없는 키명이 있는 경우에는 생략
											
									2) 연산자
									- 산술연산자(+, -, *, /(div), %(mod))
										=> null+1 ==> null은 0으로 계산해서 1
										=> "10"+10 => 20
										=> / => 실수
									- 비교연산자(문자열 비교가 가능)
										=> ==(eq) : 같다
										=> !=(ne) : 같지 않다
										=> <(lt)
										=> >(gt)
										=> <=(le)
										=> >=(ge)
									- 논리연산자
										=> &&(and), ||(or), !(not)
									- 문자열 결합
										=> +=
									- 삼항연산자
										=> 조건 ? 값:값
										
									JSTL
										<c:set>
										<c:if>
										<c:forEach>
										<c:choose> <c:when> <c:otherwise>
										<c:redirect>
										<fmt:formatDate>
										<fmt:formatNumber>
							 --%>
							<td>
								<a href="detail.jsp?no=${vo.no}">${vo.subject }</a>
								<c:if test="${today == vo.dbday }">
									<font color=red><sup>new</sup></font>
								</c:if>
							</td>
							<td class="text-center" width=15%>${vo.name }</td>
							<td class="text-center" width=20%>
								<fmt:formatDate value="${vo.regdate }" pattern="yyyy-MM-dd"/>
							</td>
							<td class="text-center" width=10%>${vo.hit }</td>
						</tr>
					</c:forEach>
				</table>
				<table class="table table-striped">
					<tr>
						<td class="text-right">
							<a href="list.jsp?page=${curpage>1?curpage-1:curpage }" class="btn btn-sm btn-danger">이전</a>
							${curpage } page / ${totalpage } pages
							<a href="list.jsp?page=${curpage<totalpage?curpage+1:curpage }" class="btn btn-sm btn-primary">다음</a>
						</td>
					</tr>
				</table>
			</div>
		</div>
</body>
</html>







