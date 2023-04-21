<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "util.CookieBox"%>
<%
	response.addCookie(CookieBox.createCookie("name", "서연주"));
	response.addCookie(CookieBox.createCookie("id", "madvirus", "/apr10", -1));
%>

<html>
<head>
<meta charset="UTF-8">
<title>CookieBox사용예</title>
</head>
<body>
CookieBox를 사용하여 쿠키 생성
</body>
</html>