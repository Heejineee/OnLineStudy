<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/jquery" src="http://code.jquery.com/jquery.js">

$(function(){
	$('#btn').click(funtcion(){
		if($('#name').val()=="")
			{
				$('#name').focus();
				return;
			}
		alert($('#name').val())
	})
})
</script>
</head>
<body>
	<form name=frm>
		이름 : <input type=text name=name size=15  id=name>
		<input type=button value="전송" id=btn>
	</form>
</body>
</html>