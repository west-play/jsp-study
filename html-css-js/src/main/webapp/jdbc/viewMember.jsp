<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.DriverManager"
	import = "java.sql.Connection"
	import = "java.sql.Statement"
	import = "java.sql.ResultSet"
	import = "java.sql.SQLException"
%>
<%
	String memberID = request.getParameter("memberID");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보</title>
</head>
<body>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");

	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	try{
		String jdbcDriver = "jdbc:oracle:thin:@localhost:1521:XE";
		String dbUser = "seoyounju";
		String dbPass = "4433";
		
		String query = "update MEMBER where MEMBERID = '"+memberID+"'";
		
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		stmt = conn.createStatement();
		
		rs = stmt.executeQuery(query);
		if( rs.next()){
%>
<table border="1">
<tr>
	<td>아이디</td><td><%= memberID %></td>
</tr>
<tr>
	<td>암호</td><td><%= rs.getString("PASSWORD") %></td>
</tr>
<tr>
	<td>이메일</td><td><%= rs.getString("EMAIL") %></td>
</tr>
</table>
<%
		}else{
%>
<%= memberID %>에 해당하는 정보가 존재하지 않습니다.
<%
		}
	} catch(SQLException ex) {
%>
에러 발생: <%= ex.getMessage() %>
<%
	} finally {
		if(rs != null) try { rs.close();} catch(SQLException ex) {}
		if(stmt != null) try { stmt.close();} catch(SQLException ex) {}
		if(conn != null) try { conn.close();} catch(SQLException ex) {}
	}
%>
</body>
</html>