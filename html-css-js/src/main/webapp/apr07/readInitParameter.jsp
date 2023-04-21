<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Enumeration"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>초기화 파라미터 읽어오기</title>
</head>
<body>
초기화 파라미터 목록:
<ul>
<% Enumeration initParamEnum = application.getInitParameterNames();
	while (initParamEnum.hasMoreElements()) {
		String initParamName = (String)initParamEnum.nextElement();
%>	
<li><%= initParamName %> = 
	<%= application.getInitParameter(initParamName) %>
<% } %>	
	
</ul>
</body>
</html>