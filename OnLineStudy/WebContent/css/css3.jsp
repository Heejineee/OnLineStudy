<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
#aaa{
	background-color:blue;
}
span#bbb h1{
	background-color:green;
}
#ccc h1{
	background-color:orange;
}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery.js">
	$(function(){
		$('#ccc h1').hover(function(){
			$('#ccc h1').css("color","green");
		}, function(){
			$('#ccc h1').css("color","blue");
		});
		});
</script>
</head>
<body>
	<h1 id="aaa">Java</h1>
	<span id="bbb">
		<h1>Oracle</h1>
		<h1>JSP</h1>
	</span>
	<span id="ccc">
		<h1>Spring</h1>
	</span>
</body>
</html>