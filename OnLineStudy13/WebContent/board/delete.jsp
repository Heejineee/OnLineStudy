<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<h1 class="text-center">삭제하기</h1>
			<table class="table table-striped">
				<tr>
					<td>
						비밀번호 : <input type=password name=pwd size=15 class="input-sm">
									  <input type=hidden name=no value="${param.no }">
					</td>
				</tr>
				<tr>
					<td class="text-center">
						<input type=submit value="삭제" class="btn btn-sm btn-danger">
						<input type=button value="취소" class="btn btn-sm btn-warning"
							onclick="javascript:history.back()">
					</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>