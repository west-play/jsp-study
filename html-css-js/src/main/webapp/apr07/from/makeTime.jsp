<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.Calendar"%>
<%
Calendar cal = Calendar.getInstance();
request.setAttribute("time", cal);
%>
<jsp:forward page="/apr07/to/viewTime.jsp" />