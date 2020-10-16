<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
	책 7장 제어흐름 (화면 이동, 화면 조립)
		=> pageContext
			- include()
			- forward()
			----------------- 많이 사용(태그로 변경)
			- <jsp:include>
			- <jsp:forward> : 화면은 이동 => request를 사용이 가능 (일반 JSP(Model1))
														  mvc 구조에 주로 사용
				sendRedirect() : 화면 이동 => request가 초기화
				
			include : JSP 안에 다른 JSP를 원하는 위치에 출력
			<jsp:include> : jsp마다 따로 실행한 후에 HTML만 묶어준다
			<%include%> : jsp를 미리 묶어서 합쳐진 JSP를 컴파일
								: 변수가 동일하면 오류(에러 발생) => static
								
 --%>
 <%
 	// 사용자 요청 정보 받기
 	String mode=request.getParameter("mode");
 	if(mode==null)
 		mode="1";
 	int index=Integer.parseInt(mode);
 	
 	String jsp="";
 	switch(index)
 	{
 	case 1:
 		jsp="content.jsp";
 		break;
 	case 2:
 		jsp="detail.jsp";
 		break;
 	}
 		
 %>
 <!DOCTYPE html>
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="nav.jsp"></jsp:include>
  
<div class="container-fluid">
  <div class="row">
  	<div class="col-sm-3">
  		<!-- 로그인 -->
  		<jsp:include page="login.jsp"></jsp:include>
  	</div>
  	<div class="col-sm-9">
  		<!-- 레시피 : 메뉴 클릭시마다 변경 : 변수를 잡아서 jsp파일명을 변경 -->
  		<jsp:include page="<%=jsp %>"></jsp:include>
  	</div>
  </div>
</div>

</body>
</html>















