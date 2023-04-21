<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application 기본 객체 사용하여 자원 읽기</title>
</head>
<body>
<% 
	String resourcePath = "/apr07/message/notice/notice.txt";
%>
자원의 실제 경로:<br>
<%= application.getRealPath(resourcePath) %>
<br>
--------------<br>
<%= resourcePath %>의 내용<br>
--------------<br>
<%
	BufferedReader br = null;
	char[] buff = new char[512];
	int len = -1;
	
	try {
		br = new BufferedReader(
			new InputStreamReader(
				application.getResourceAsStream(resourcePath) ));
		while ((len = br.read(buff)) != -1) {
			out.print(new String(buff, 0, len));
		}
	} catch(IOException ex) {
		out.println("예외 발생: "+ex.getMessage());
	} finally {
		if (br != null) try {br.close();} catch(IOException ex) {}
	}
%>
</body>
</html>