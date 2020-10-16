<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.sist.xml.*" %>
<%
	// 데이터 읽기
	// 한글 => 한글 변환(디코딩)
	request.setCharacterEncoding("UTF-8");
	// 1. 사용자가 보내준 검색어 읽어오기
	String fd=request.getParameter("fd");
	// 주의점 : 맨 처음에는 검색어를 보내줄 수 없다(실행과 동시에 보낼 수 없기 때문) ==> default로 설정 해야 함
	if(fd==null)
	{
		fd="맛집";
	}
	
	NewsManager m=new NewsManager(); 	// 네이버 연결해서 뉴스 데이터를 읽어오는 역할의 클래스
	List<Item> list=m.newsAllData(fd);	// 네이버로부터 데이터 수집 요청
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
*{
	font-family:맑은 고딕;
}
.row{
	width:800px;
	margin:0px auto; /* 가운데 정렬 */
}
h1{
	text-align:center;
}
.title{
	font-size:20px;
	color:orange;
	font-weight:bold;
}
a{
	color:#333;
	text-decoration:none;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<h1>네이버 실시간 뉴스 검색</h1>
			<table class="table">
				<tr>
					<td>
						<form method="post" action="news.jsp">
							<input type=text name=fd size=15 class="input-sm">
							<input type=submit value="검색" class="btn btn-sm btn-primary">
						</form>
					</td>
				</tr>
			</table>
			<%-- 뉴스 데이터 출력하는 위치 --%>
			<table class="table table-striped">
				<tr>
					<td>
						<%
							for(Item i:list)
							{
						%>
								<table class="table table-hover">
									<tr>
										<td class="text-center title"><%=i.getTitle() %></td>
									</tr>
									<tr>
										<td><a href="<%=i.getLink()%>"><%=i.getDescription() %></a></td>
									</tr>
									<tr>
										<td class="text-right"><%=i.getAuthor() %></td>
									</tr>
								</table>
						<%
							}
						%>
					</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>
















