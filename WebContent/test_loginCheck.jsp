<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%!
    	Connection connection;
    	Statement statement;
    	ResultSet resultSet;
    	
    	String driver = "oracle.jdbc.driver.OracleDriver";
    	String url = "jdbc:oracle:thin:@localhost:1521:xe";
    	String uid = "scott";
    	String upw = "tiger";
    	String query;
    %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
		
	<%!
		
		String check_id, check_pw;
	%>
	
	<%
		request.setCharacterEncoding("EUC-KR");
		check_id = request.getParameter("id");
		System.out.println(check_id);
		check_pw = request.getParameter("pw");
		System.out.println(check_pw);
		query = "select * from test_member where id='" + check_id + "' and pw='" + check_pw + "'";
		
		
		try {
			
			Class.forName(driver);
			connection = DriverManager.getConnection(url, uid, upw);
			statement = connection.createStatement();
			resultSet = statement.executeQuery(query);
			
			if(resultSet.next()){
				String id = resultSet.getString("id");
				String pw = resultSet.getString("pw");
				
				session.setAttribute("id", id);
				session.setAttribute("pw", pw);
				
				response.sendRedirect("test_loginSuccess.jsp");
				System.out.println("in");
			} else {
				response.sendRedirect("test_loginFail.jsp");
				System.out.println("out");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (resultSet != null) resultSet.close();
				if (statement != null) statement.close();
				if (connection != null) connection.close();
			} catch (Exception e){}
		}
	%>

</body>
</html>