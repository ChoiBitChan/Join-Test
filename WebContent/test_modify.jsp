<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%!
    	Connection connection;
    	Statement statement;
    	ResultSet resultSet;
    	
    	String name, id, pw, query;
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	정보 수정<br/>
	
	<%
		request.setCharacterEncoding("EUC-KR");
	
		id = (String)session.getAttribute("id");
		
		String query = "select * from test_member where id = '" + id + "'";
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "scott", "tiger");
		statement = connection.createStatement();
		resultSet = statement.executeQuery(query);
		
		while (resultSet.next()) {
			name = resultSet.getString("name");
			id = resultSet.getString("id");
			pw = resultSet.getString("pw");
		}
	%>
	
	<form action="test_modifySuccess.jsp" method="post">
		이름 : <input type="text" name="name" value=<%=name %> size="10"><br/>
		아이디 : <input type="hidden" name="id" size="10" value=<%=id %>><%=id %><br/>
		비밀번호 : <input type="text" name="pw" value=<%=pw %> size="10"><br/>
		
		<input type="submit" value="정보수정"> <input type="reset" value="취소">
	</form>
</body>
</html>