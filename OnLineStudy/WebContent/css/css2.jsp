<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<style>
	/* SELECTOR */
h1 {
	background-color: blue;
	color:yellow;
}
#aaa{
	color:black;
}
#bbb{
	color:green;
}
#ccc{
	color:red;
}
.ddd{
	color:magenta;
}
</style>
<body>
	<center>
		<!-- 
			태그 구분하는 방법
				1) ID => 중복이 없는 태그(한개만 제어할 때 사용)
				2) Class => 중복이 있는 경우
				====== JavaScript, CSS에서 주로 사용(디자인, 태그 제어)
				3) Name
				====== 자바에서 전송된 데이터를 받을 경우
		 -->	
		<h1 id="aaa">Java</h1>
		<h1 id="bbb">Oracle</h1>
		<h1 id="ccc">JSP</h1>
		<!-- 동시에 제어(반드시 Class를 설정) -->
		<h1 class="ddd">JSP</h1>
		<h1 class="ddd">JSP</h1>
	</center>
</body>
</html>