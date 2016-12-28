<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%!
		Connection connection;
		PreparedStatement preStmt;
		ResultSet resultSet;
		
		String driver = "oracle.jdbc.driver.OracleDriver";
   	 	String url = "jdbc:oracle:thin:@localhost:1521:xe";
    	String uid = "scott";
    	String upw = "tiger";
	%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%!
		String name, id, pw, query;
	%>
	
	<%
		request.setCharacterEncoding("EUC-KR");
		
		name = request.getParameter("name");
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		
		try {
			Class.forName(driver);
			connection = DriverManager.getConnection(url, uid, upw);
			int n;
			query = "update test_member set name = ?, pw = ? where id = ?";
			preStmt = connection.prepareStatement(query);
			
			preStmt.setString(1, name);
			preStmt.setString(2, pw);
			preStmt.setString(3, id);
			n = preStmt.executeUpdate();
			
			if (n == 1) {
				out.println("수정 완료");
			} else {
				out.println("수정 실패");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (resultSet != null) resultSet.close();
				if (preStmt != null) preStmt.close();
				if (connection != null) connection.close();
			} catch (Exception e){}
		}
	%>

</body>
</html>