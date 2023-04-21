<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>절대 경로 사용하여 자원 읽기</title>
</head>
<body>
<%
	FileReader fr = null;
	char[] buff = new char[512];
	int len = -1;
	
	try{
		fr = new FileReader(
				"/Users/seoyeonju/eclipse-workspace/html-css-js/src/main/webapp/apr07" +
				"/message/notice/notice.txt");
		while ((len = fr.read(buff))!= -1){
			out.print(new String(buff, 0, len));
		}
	} catch(IOException ex){
		out.println("예외 발생:" + ex.getMessage());
	} finally {
		if(fr != null) try {fr.close();} catch(IOException ex){}
	}
%>
</body>
</html>