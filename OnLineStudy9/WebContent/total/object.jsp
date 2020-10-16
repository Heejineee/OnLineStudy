<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
	1) 내장객체
		request
			getParameter() : 단일 값을 받는 경우
			getParameterValues() : 다중값(체크박스)
			setCharacterEncoding() : 디코딩(인코딩 => 디코딩)
		response
			setHeader() : 실제 데이터를 보내기 전에 전송하는 데이터 (header : IP, Method) 다운로드
			sendRedirect() : 서버에서 사용자 요청한 파일로 이동 => GET 방식을 이용한다
		out
			기본 메모리 크기 : 8kb
			println() : 화면에 출력 ==> <%= %>
		pageContext
			include() : 특정 부분에 다른 JSP를 포함
						  <jsp:include>
			forward() : 원래 => 모든 JSP (request를 따로 가지고 있다)
				화면이 변경 되면 request가 초기화(기존에 보냈던 모든 데이터 잃어버린다)
				잃어 버리지 않게 하는 방식 => forward(MVC, Spring)
				
		application
			web.xml을 읽을 경우 : getInitParameter()
			log() => 모든 서버에서 로그파일 기록하고
			getRealPath() : 실제 톰캣이 읽어가는 경로명 (모든 그림 파일 여기에 존재)
			
		error 처리
			errorPage 처리
			web.xml에 처리하는 방식
				<error-page>
					<error-code>404</error-code>
					<location>처리하는 파일의 위치</location>
				<error-page>
				에러 종류
					- 404 : 파일이 존재하지 않는 경우
					- 500 : 소스에 컴파일, 인터프리터 에러
					- 415 : 한글 변환 코드 오류 
					- 400 : 데이터 전송에 문제 생겼을 때
					- 200 : 정상 수행
		
		=> session/cookie(내장 객체)	
 --%>
</body>
</html>