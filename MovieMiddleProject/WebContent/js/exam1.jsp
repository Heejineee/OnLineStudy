<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--  외부 스크립트 => 확장자는 항상 .js
		<script src="파일명"> ==> 파일명은 url 혹은 파일명 
 -->
<!-- 내부 스크립트 -->
<script type="text/javascript">
	window.onload=function(){
		var a="<center><h1>Hello JavaScript</h1></center>";
		// 화면에 출력
		document.write(a);
		a=10;	// 자동으로 형변환 가능
		document.write(a);
	}
	// onload=function 대신 ()=> 로 씀
	window.onload=()=>{
		let a="Hello JavaScript";
		a="Hello2";
		console.log(a);
		const b="JavaScript";
		b="Jquery";
		console.log(b);
	}
</script>
</head>
<body>

</body>
</html>