<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
/*
 * 	제어문
 		조건문
 			if(조건문)
 			{
 				조건이 true일 때 실행 문장
 			}
 			------------------------------------
 			if(조건문)
 			{
 				조건이 true일 때 실행 문장
 			}
 			else
 			{
 				조건이 false일 때 실행 문장
 			}
 */
 window.onload=function(){
	 let a=10;
	 if(a%2==0)
		 console.log("a=짝수");
	 else
		 console.log("a=홀수");
 }
 let i=0;
 function click()
 {
	 //if(i)
 }
</script>
</head>
<body>
	<div>
		<input type=button value="클릭" onclick=click()>
	</div>
	<div id="div" style="display:none">
		<img src="https://i2.wp.com/metro.co.uk/wp-content/uploads/2019/06/SEI_73041344.jpg?quality=90&strip=all&zoom=1&resize=540%2C360&ssl=1">
	</div>
</body>
</html>