<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- 
	버퍼가 없을 경우 <jsp:forward> 액션 태그가 올바르게 실행되지 않을 수도 있다.



 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
이 페이지는 from.jsp가 생성한 것입니다.

<jsp:forward page="/apr07/to/to.jsp"></jsp:forward>
</body>
</html>