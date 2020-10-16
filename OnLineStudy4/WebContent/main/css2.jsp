<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#wrap{
	width:960px;
	height:900px;
	margin:0px auto;
	font-size:20px;
	text-align:center;
	font-family:맑은 고딕;
}
#header{
	width:960px;
	height:100px;
	background-color:#6df;
	line-height:100px;
}
#nav{
	width:960px;
	height:100px;
	background-color:#fd0;
	line-height:100px;
}
#aside{
	width:300px;
	height:600px;
	background-color:#0d6;
	line-height:600px;
	float:left;
}
#section{
	width:660px;
	height:600px;
	background-color:#eee;
	line-height:600px;
	float:left;
}
#footer{
	width:960px;
	height:100px;
	background-color:#333;
	line-height:100px;
	color:white;
	float:left;
}
</style>
</head>
<body>
	<div id="wrap">
		<div id="header">header(회사로고)</div>
		<div id="nav">nav(메뉴)</div>
		<div id="aside">aside(부가정보, 로그인창)</div>
		<div id="section">section(실제 출력부분)</div>
		<div id="footer">footer(회사정보, 개인정보방침)</div>
	</div>
</body>
</html>