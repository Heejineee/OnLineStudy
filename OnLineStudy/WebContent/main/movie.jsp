<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*, com.sist.dao.*"%>
<%
	// ������ ������ ����
	EmpDAO dao=new EmpDAO();
	ArrayList<String> list=dao.movieGetPoster();
%>
<%--
	CSS => �±׸� �����ؼ� ó��
	1) �±׸�
		�±׸� {�Ӽ�:��; �Ӽ�:��...}
	2) ID��
		#ID�� {�Ӽ�:��; �Ӽ�:��...}
	3) class��
		.class�� {�Ӽ�:��; �Ӽ�:��...}
	4) ���ռ�����
		= �ڼ�
		�����±� > �ڼ��±� {�Ӽ�:��; �Ӽ�:��...}
		= �ļ�
	5) ���󼿷���
		�±׸�:hover
		�±׸�:focus
		�±׸�:first
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
img{
	opacity: 1.0;
	border:2px solid red;
}
img:hover{
	opacity: 0.3;
	cursor: pointer;
}
</style>
</head>
<body>
	<center>
		<h1 id="movie_text">��ȭ���</h1>
		<table id="user-table" width=800>
			<tr>
				<%
					for(String poster:list)
					{
				%>
				<td align="center">
					<img src="<%=poster %>" width=150 height=250>
				</td>
				<%
					}
				%>
			</tr>
		</table>
	</center>
</body>
</html>












