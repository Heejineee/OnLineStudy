<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
.book1{
	list-style-type: lower-alpha;
}
.book2{
	list-style-type:upper-roman;
}
.book3{
	list-style-type: none;
	display:inline-block;
}
.book3 li{
	display:inline;
}
</style>
</head>
<body>
	<ol class="book1">
		<li>�ڹ��� ����</li>
		<li>����Ŭ�� ����</li>
	</ol>
	<ol class="book2">
		<li>�ڹ��� ����</li>
		<li>����Ŭ�� ����</li>
	</ol>
	<ul class="book3">
		<li>�ڹ��� ����</li>
		<li>����Ŭ�� ����</li>
	</ul>
</body>
</html>