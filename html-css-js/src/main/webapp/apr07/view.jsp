<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
 	String code = request.getParameter("code");
 	String viewPageURI = null;
 	
 	
 	if(code.equals("A")) {
 		viewPageURI ="/apr07/viewModule/a.jsp";
 	} else if(code.equals("B")){
 		viewPageURI ="/apr07/viewModule/b.jsp";
 	} else if(code.equals("C")){
 		viewPageURI ="/apr07/viewModule/c.jsp";
 	}
 
 %>
 
 <jsp:forward page="<%= viewPageURI %>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>