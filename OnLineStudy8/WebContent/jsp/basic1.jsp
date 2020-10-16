<%--
	import : 기존에 있는 클래스를 읽어 올 때
	errorPage : 에러가 났을 경우에 지정된 파일로 이동
			404 : 사용자가 파일명을 보내줄 때 서버에 파일이 존재하지 않는 경우
					프록래머가 실수로 링크시에 파일명을 틀리게 만든 경우가 많다
			500 : 톰캣이 jsp 파일을 자바로 변경 후에 컴파일 에러
					소스코딩의 문제 발생
			400 : 데이터 전송시에 잘못된 데이터가 전송된 경우
			415 : UTF-8, EUC-KR 한글 변환 코드가 틀릴 경우
			
	클라이어트가 브라우저 요청 => 톰캣이 받아서 파일을 찾은 후
				basic.jsp => basic1_jsp.java 파일 생성 ==> 컴파일
							 => basic1_jsp.class 생성 ==> 가상머신(JVM)
							 => 한 줄씩 읽어서 번역 ==> 메모리에 <html>만 출력
 --%>
 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" buffer="8kb"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 출력하는 메모리 크기 : getBufferSize() --%>
	<h1>출력하는 메모리 크기 : <%=out.getBufferSize() %></h1>
	<%-- 현재 남아있는 버퍼의 크기 : getRemaining() --%>
	<h1>남아있는 버퍼의 크기 : <%=out.getRemaining() %></h1>
	<%--
		clear() : 메모리에 저장된 모든 데이터를 지울 경우
		flush() : 버퍼의 내용을 클라이언트로 전송
		=> 자동으로 처리가 된다 => 전송 => 메모리에 저장된 데이터를 다 지운다 autoFlush(JSP에서 자동 설정)
		=> 클라이언트가 서버에 접속을 하게 되면 서버는 HTML, XML을 보내기 위해서 메모리 공간을 생성
			 클라이언트당 한개만 생성 (메모리에 저장, 전송 완료 => 지워준다)
			 
	 --%>
</body>
</html>













