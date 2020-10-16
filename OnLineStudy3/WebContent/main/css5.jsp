<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
nav{
	background-color:#999;
}
nav ul li{
	display:inline-block;
	margin:20px;
}
a{
	text-decoration:none;
	color:white;
	font-family:맑은 고딕;
	font-weight:bold;
}
a:hover{
	text-decoration:underline;
	color:green;
}
div{
	width:100px;
	height:100px;
	margin:30px;
	display:inline-block;
}
</style>
</head>
<body>
	<nav>
		<ul>
			<li><a href="#">영화</a></li>
			<li><a href="#">음악</a></li>
			<li><a href="#">맛집</a></li>
			<li><a href="#">레시피</a></li>
			<li><a href="#">쇼핑몰</a></li>
		</ul>
	</nav>
	<div style="background:red;"></div>
	<div style="background:blue;"></div>
	<div style="background:green;"></div>
</body>
</html>