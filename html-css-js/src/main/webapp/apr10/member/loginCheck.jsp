<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "util.CookieBox"%>
<%
	CookieBox cookieBox = new CookieBox(request);
	boolean login = cookieBox.exists("LOGIN") &&
			cookieBox.getValue("LOGIN").equals("SUCCESS");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인여부 검사</title>
</head>
<body>
<%
	if (login) {
%>
아이디 ""
<%} %>

</body>
</html>


<!-- 9.13 -->