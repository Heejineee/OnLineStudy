<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.sist.json.*" %>
<%
	// 데이터 읽기
	JSONManager m=new JSONManager();
	// 사용자가 요청한 영화정보 보여주기 시작(해당 번호)
	String no=request.getParameter("no");
	// movie.jsp?no=1
			if(no==null)	// 첫 페이지는 반드시 디폴트 설정
				no="1";
	// 해당 번호에 데이터 받기
	List<MovieVO> list=m.movieListData(Integer.parseInt(no));
	
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
	margin:0px auto;
}
h1{
	text-align:center;
}
</style>
</head>
<body>
	<div class="container">
		<h1>영화 목록</h1>
		<div class="row">
		<%-- 링크 --%>
		<a href="movie.jsp?no=1" class="btn btn-lg btn-primary">박스오피스</a>
		<a href="movie.jsp?no=2" class="btn btn-lg btn-success">실시간 예매율</a>
		<a href="movie.jsp?no=3" class="btn btn-lg btn-info">좌석 점유율</a>
		<a href="movie.jsp?no=4" class="btn btn-lg btn-danger">온라인상영관 일일 </a>
		</div>
		<div class="row">
			<div class="col-sm-6">
			
			</div>
			<div class="col-sm-6">
				<table class="table table-striped">
					<tr>
						<th class="text-center">순위</th>
						<th class="text-center"></th>
						<th class="text-center">영화명</th>
						<th class="text-center">감독</th>
					</tr>
					<%
						for(Movie vo:list)
						{
					%>
						<tr>
							<td class="text-center"><%=vo.getRank() %></td>
							<td class="text-center">
								<img src="http://www.kobis.or.kr<%=vo.getThumbUrl()%>" width=35 height=35>
							</td>
							<td><%=vo.getMovieNm() %></td>
							<td class="text-center"><%=vo.getDirector() %></td>
						</tr>
					<%
						}
					%>
				</table>
			</div>
		</div>
	</div>
</body>
</html>











