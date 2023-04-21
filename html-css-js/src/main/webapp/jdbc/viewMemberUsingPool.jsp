<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import = "java.sql.DriverManager"
	import = "java.sql.Connection"
	import = "java.sql.Statement"
	import = "java.sql.ResultSet"
	import = "java.sql.SQLException"    
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록</title>
</head>
<body>
MEMBER 테이블의 내용
<table border="1" width="100%">
<tr>
	<td>이름</td><td>아이디</td><td>이메일</td>
</tr>
<%
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	try{
		  //jdbc:apache:commons:dbcp:/pool
															   //jdbc:oracle:thin:@localhost:1521:XE
		String query = "select * from MEMBER order by MEMBERID";
		conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:/pool");
		stmt = conn.createStatement();
		rs = stmt.executeQuery(query);
		while(rs.next()){
%>
<tr>
	<td><%= rs.getString("NAME") %></td>
	<td><%= rs.getString("MEMBERID") %></td>
	<td><%= rs.getString("EMAIL") %></td>
</tr>
<%
		}
	} finally {
		if(rs != null) try { rs.close(); } catch(SQLException ex){}
		if(stmt != null) try { stmt.close(); } catch(SQLException ex){}
		if(conn != null) try { conn.close(); } catch(SQLException ex){}
	}
%>
</table>
</body>
</html>