<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	���� Ȯ��<br/>

	<form action="test_joinSuccess.jsp" method="post">
	<%!
		String name, id, pw;
	%>
	
	<%
		request.setCharacterEncoding("EUC-KR");
	
		name = request.getParameter("name");
		id = request.getParameter("id");
		pw = request.getParameter("pw");
	%>
	
	<input type="hidden" name="name" value=<%=name %>>
	<input type="hidden" name="id" value=<%=id %>>
	<input type="hidden" name="pw" value=<%=pw %>>
	
	�̸� : <%=name %><br/>
	���̵� : <%=id %><br/>
	��й�ȣ : <%=pw %><br/>
	<br/>
	������ ��ġ�մϱ�?<br/>
	
	<input type="submit" value="��">
	<input type="button" value="�ƴϿ�" onclick="location.href='test_join.html'">
	</form>
</body>
</html>