<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	�α��� ����<br/>
	
	<%!
		String id;
	%>
	
	<%
		id = (String)session.getAttribute("id");
	
		
		out.println(id + "�� �ȳ��ϼ���.");
	%>
	<br/>
	<input type="button" value="��������" onclick="location.href='test_modify.jsp'">
	<input type="button" value="ȸ��Ż��" onclick="location.href='test_leave.jsp'">
	
</body>
</html>