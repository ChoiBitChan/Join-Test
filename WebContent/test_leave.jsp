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
	회원탈퇴
	<br/>
	
	<%!
		String id, pw;
	%>
	
	<%
		id = (String)session.getAttribute("id");
		pw = (String)session.getAttribute("pw");
	
		
		out.println(id + "님 탈퇴 하시겠습니까?");
	%>
	<br/>
	<input type="button" value="예" onclick="location.href='test_leaveCheck.jsp'">
	<input type="button" value="아니오" onclick="location.href='test_loginSuccess.jsp'">

</body>
</html>