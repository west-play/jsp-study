<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useFullnameCalendar</title>
</head>
<body>
<% 
java.util.Calendar cal = java.util.Calendar.getInstance();
%>
오늘은
	<%= cal.get(java.util.Calendar.YEAR) %>년
	<%= cal.get(java.util.Calendar.MONTH) %>월
	<%= cal.get(java.util.Calendar.DATE) %>일
입니다
</body>
</html>