<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int number = 10;
%>

<%@ include file="/apr07/includee.jspf" %>

공통변수 DATAFOLDER = "<%= dataFolder %>"
</body>
</html>