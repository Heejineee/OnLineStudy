<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div style="height:30px"></div>
	<div class="row">
		<div class="col-sm-8">
			<table class="table">
				<tr>
					<td>
						<c:forEach var="vo" items="${nList }">
							<table class="table">
								<tr>
									<td width=30% class="text-center" rowspan=3>
										<img src="${fn:substring(vo.poster,0,fn:indexOf(vo.poster,')') }" width=100%>
									</td>
									<td width=70%>${vo.title }</td>
								</tr>
								<tr>
									<td width=70%>${vo.content }</td>
								</tr>
								<tr>
									<td width=70% class="text-right">${vo.author }</td>
								</tr>
							</table>
						</c:forEach>
					</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>