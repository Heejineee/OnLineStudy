<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
window.onload=()=>{
	// 비교연산자
	var result='Java'==='Java';	// ==, === : 문자열 비교도 가능
	console.log(result);
	var res1='Java'>'Hello';
	console.log(res1);
	var res2='Java'!='Java';
	console.log(res2);
	
	let a=10;
	a++;
	console.log("a="+a);
	
	let aa=10;
	let bb=++aa;
	console.log("aa="+aa);
	console.log("bb="+bb);
	
	aa=10;
	bb=aa++;
	console.log("aa="+aa);
	console.log("bb="+bb);
	
	let aaa=10===10;
	let bbb=!aaa;
	console.log("aaa="+aaa);
	console.log("bbb="+bbb);
	/*
		let, var ==> 데이터형
						1) 정수
						2) 실수
						3) 불린
						4) 문자열
						5) 배열
						6) 객체
	*/
}
</script>
</head>
<body>

</body>
</html>