<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
a:link{
	color:darkgrey;
}
a:visited{
	color:green;
}
a:hover{
	color:orange;
}
p:active{
	color:red;
}
input:focus{
	background-color: blue;
}
li:nth-child(1){
	color:red;
}
li:nth-child(2){
	color:blue;
}
li:nth-child(3){
	color:green;
}
li:nth-child(4){
	color:orange;
}
li:nth-child(5){
	color:yellow;
}
li:nth-child(6){
	color:grey;
}
li:nth-child(7){
	color:skyblue;
}
tr:nth-child(1){
	background-color: orange;
}
tr:nth-child(2n){
	background-color: RGB(255,255,200);
}
</style>
</head>
<body>
	<a href="http://daum.net" style="display:block;">다음</a>
	<a href="http://naver.com" style="display:block;">네이버</a>
	<p>클릭하세요</p>
	<input type=text  size:15>
	<ul>
		<li>자바</li>
		<li>오라클</li>
		<li>스프링</li>
		<li>MyBatis</li>
		<li>자바스크립트</li>
		<li>Ajax</li>
		<li>React</li>
	</ul>
	<table border=1 bordercolor=black width=500>
		<tr>
			<th>이름</th>
			<th>국어</th>
			<th>영어</th>
			<th>수학</th>
		</tr>
		<tr>
			<td>홍길동</td>
			<td>89</td>
			<td>90</td>
			<td>91</td>
		</tr>
		<tr>
			<td>김철수</td>
			<td>89</td>
			<td>90</td>
			<td>91</td>
		</tr>
		<tr>
			<td>신짱구</td>
			<td>89</td>
			<td>90</td>
			<td>91</td>
		</tr>
	</table>
</body>
</html>