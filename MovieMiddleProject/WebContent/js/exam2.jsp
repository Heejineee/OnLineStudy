<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
/*
 * 	var : 사용범위 지정 X
 	let : 사용범위 지정 O
 	const : 상수형 변수
 */
 var a=10;	// 전역변수
 window.onload=function(){
	 var b=20;	// 지역변수
	 if(a==10)
		 {
		 	let b=100;
		 }
	 consloe.log("b="+b);
 }
 /*
 	연산자
 		산술연산자(+, -, *, /, %)
 		
 */
 window.onload=function()
 {
	 let a=10;
	 let b=3;
	 console.log("10+3="+(a+b));
	 console.log("10-3="+(a-b));
	 console.log("10*3="+(a*b));
	 console.log("10/3="+(a/b));
	 console.log("10%3="+(a%b));
	 
	 let aa="Hello";
	 let bb="JavaScript!!";
	 console.log(aa+bb);
	 
	 let aaa="10";
	 let bbb=20;
	 console.log(aaa+bbb);
	 
	 let aaaa='A';
	 let bbbb=10;
	 console.log(aaaa+bbbb);
 }
</script>
</head>
<body>

</body>
</html>






