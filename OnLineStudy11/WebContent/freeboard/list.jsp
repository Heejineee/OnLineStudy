<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="java.util.*, com.sist.dao.*" %>
<%--
	자바 : 데이터를 가지고 온다
	데이터 => 출력
 --%>
 <%--
 	게시판 목록 출력
 	영화 (home.jsp) : cookie
 	로그인 (login.jsp) : session
 		freeboard : <jsp:~>
 		databoard : 다운로드, 업로드
 	예매 : javascript => Ajax
  --%>
 <%
 	String strPage=request.getParameter("page");
 	// 사용자가 전송(요청) => 요청한 데이터를 톰캣이 모든 데이터를 묶어서 request에 첨부
 	// 모든 데이터는 request를 통해 들어온다
 	if(strPage==null)	// 처음 한번은 사용자가 페이지 번호 보낼 수 없다
 	{
 		strPage="1";	// default page => 반드시 첨부한다
 	}
 	int curpage=Integer.parseInt(strPage); // 현재 보고있는 페이지
 	// 출력할 내용 가지고오기
 	Map map=new HashMap(); // 키, 값을 동시에 저장하는 공간
 	// HashMap map=new HashMap();
 	// Map map=new HashMap();
 	// Map ==> interface => Map 인터페이스를 구현한 클래스 => HashMap()
 	
 	int rowSize=10;
 	int start=(rowSize*curpage)-(rowSize-1);	
 	int end=rowSize*curpage;
 	
 	map.put("start", start);
 	map.put("end", end);
 	List<BoardVO> list=BoardDAO.freeBoardListData(map);
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="row">
		<h1 class="text-center">자유게시판</h1>
		<table class="table">
			<tr>
				<td>
					<a href="../main/main.jsp?mode=10" class="btn btn-sm btn-primary">새글</a>
				</td>
			</tr>
		</table>
		<table class="table table-striped">
			<tr class="danger">
				<td class="text-center" width=10%>번호</td>
				<td class="text-center">제목</td>
				<td class="text-center" width=15%>이름</td>
				<td class="text-center" width=20%>작성일</td>
				<td class="text-center" width=10%>조회수</td>
			</tr>
			<%-- 데이터 출력 --%>
			<%
				for(BoardVO vo:list)
				{
			%>
					<tr>
						<td class="text-center"><%=vo.getNo() %></td>
						<td>
							<a href="../main/main.jsp?mode=11&no=<%=vo.getNo()%>"><%=vo.getSubject() %></a>
						</td>
						<td class="text-center"><%=vo.getName() %></td>
						<td class="text-center"><%=vo.getDbday() %></td>
						<td class="text-center"><%=vo.getHit() %></td>
					</tr>
			<%
				}
			%>
		</table>
	</div>
</body>
</html>












