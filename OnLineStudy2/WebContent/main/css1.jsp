<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<!-- ���� CSS -->
<style type="text/css">
#aaa{
	width:200px;
	height:200px;
	padding:20px;
	margin:50px;
	border:1px solid red;
	font-size:12pt;
	font-weight:bold;
	font-family:���� ���;
}
</style>
</head>
<body>
	<div id="aaa">CSS (Box-Model) : ���� CSS</div>
	<%-- �������� �� �ζ��� CSS --%>
	<div style="border:5px solid green; width:100px; height:100px;"></div>
	<div style="border:5px dashed green; width:100px; height:100px;"></div>
	<div style="border:5px dotted green; width:100px; height:100px;"></div>
	<div style="border:5px double green; width:100px; height:100px;"></div>
	<div style="border:5px ridge green; width:100px; height:100px;"></div>
	<div style="border:5px outset green; width:100px; height:100px;"></div>
	<div style="border:5px groove green; width:100px; height:100px;"></div>
</body>
</html>