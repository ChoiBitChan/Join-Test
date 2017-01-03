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
	로그인 성공<br/>
	
	<%!
		String id;
	%>
	
	<%
		id = (String)session.getAttribute("id");
	
		
		out.println(id + "님 안녕하세요.");
	%>
	<br/>
	<input type="button" value="정보수정" onclick="location.href='test_modify.jsp'">
	<input type="button" value="회원탈퇴" onclick="location.href='test_leave.jsp'">
	
</body>
</html>