<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*, com.sist.dao.*"%>
<%
	EmpDAO dao=new EmpDAO();
	ArrayList<MovieVO> list=dao.movieListData();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
#list-table{
	border:1px solid black;
	border-collapse:collapse;
}
#list-table tr:nth-child(1){
	background-color:#999;
	font-family:맑은 고딕;
}
h1{
	text-shadow:5px 5px 3px #333;
	text-align:center;
	font-family:맑은 고딕;
}
.container{
	width:1300;
	border:1px solid #333;
}
.row{
	width:1200px;
	margin:0px auto;
}
.aaa {
	width:30px;
	height:30px;
	border-radius:30px;
}
#list-table td{
	border-bottom: 1px dotted black;
	font-family:맑은 고딕;
	font-size:9pt;
}
#list-table .dataTr:hover{
	background-color:#FC6;
	cursor: pointer;
}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	$('.dataTr').click(function(){
		// 클릭 시마다 영화 번호를 가지고 온다
		var no=$(this).attr("value");
		// alert(no);
		$.ajax({
			type:'post',
			url:'detail.jsp',
			data:{"no":no},
			success:function(result)
			{
				$('#detail').html(result);
			}
		})
	});
});
</script>
</head>
<body>
	<div class="container">
		<div class="row">
			<h1>영화 목록</h1>
			<table width=1200>
				<tr>
					<td><%-- 목록 출력 --%>
						<table id="list-table" width=60%>
							<tr>
								<th width=5%>번호</th>
								<th></th>
								<th>제목</th>
								<th>감독</th>
								<th>장르</th>
							</tr>
							<%
								for(MovieVO vo:list)
								{
							%>
								<tr class="dataTr" value="<%=vo.getMno() %>">
									<td><%=vo.getMno() %></td>
									<td>
										<img src="<%=vo.getPoster() %>" class="aaa">
									</td>
									<td><%=vo.getTitle()%></td>
									<td><%=vo.getDirector() %></td>
									<td><%=vo.getGenre() %></td>
								</tr>
							<%
								}
							%>
						</table>
					</td><%-- 상세 보기 --%>
					<td id="detail" valign="top">
					
					</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>