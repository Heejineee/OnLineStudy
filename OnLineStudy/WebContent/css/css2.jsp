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
			�±� �����ϴ� ���
				1) ID => �ߺ��� ���� �±�(�Ѱ��� ������ �� ���)
				2) Class => �ߺ��� �ִ� ���
				====== JavaScript, CSS���� �ַ� ���(������, �±� ����)
				3) Name
				====== �ڹٿ��� ���۵� �����͸� ���� ���
		 -->	
		<h1 id="aaa">Java</h1>
		<h1 id="bbb">Oracle</h1>
		<h1 id="ccc">JSP</h1>
		<!-- ���ÿ� ����(�ݵ�� Class�� ����) -->
		<h1 class="ddd">JSP</h1>
		<h1 class="ddd">JSP</h1>
	</center>
</body>
</html>