<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.dao.*"%>
<%
   String no=request.getParameter("no");
	BoardVO vo=BoardDAO.freeBoardDetailData(Integer.parseInt(no));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- JQUERY : 라이브러리 로드(자바에서 import같은거) -->
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
	var i=0;
	$(function(){	// main
		$('#delBtn').click(function(){
			if(i==0)
			{
				$('#del').show();
				$('#delBtn').val("취소");
				i=1;
			}
			else
			{
				$('#del').hide();
				$('#delBtn').val("삭제");
				i=0;
			}
		});
	});
</script>
</head>
<body>
   <div class="row">
     <h1 class="text-center">내용보기</h1>
     <table class="table table-striped">
       <tr>
         <th class="text-center danger" width=20%>번호</th>
         <td class="text-center" width=30%><%=vo.getNo() %></td>
         <th class="text-center danger" width=20%>작성일</th>
         <td class="text-center" width=30%><%=vo.getDbday() %></td>
       </tr>
       <tr>
         <th class="text-center danger" width=20%>이름</th>
         <td class="text-center" width=30%><%=vo.getName() %></td>
         <th class="text-center danger" width=20%>조회수</th>
         <td class="text-center" width=30%><%=vo.getHit() %></td>
       </tr>
       <tr>
         <th class="text-center danger" width=20%>제목</th>
         <td colspan="3"><%=vo.getSubject() %></td>
       </tr>
       <tr>
         <td colspan="4" class="text-left" valign="top" height=200>
          <%-- 한줄 문자열 --%>
          <pre style="white-space: pre-wrap;background-color:white;border:none"><%=vo.getContent() %></pre>
         </td>
       </tr>
       <tr>
         <td colspan="4" class="text-right">
           <a href="../main/main.jsp?mode=12" class="btn btn-xs btn-primary">수정</a>
           <input type=button class="btn btn-xs btn-success" id="delBtn" value="삭제">
           <a href="../main/main.jsp?mode=9" class="btn btn-xs btn-danger">목록</a>
         </td>
       </tr>
       <tr id="del" style="display:none;">
       	<td colspan="4" class="text-right">
       		비밀번호 : <input type=password class="input-sm" size=10 id="pwd">
       					  <input type=submit value="삭제하기" class="btn btn-sm btn-danger">
       	</td>
       </tr>
     </table>
   </div>
</body>
</html>