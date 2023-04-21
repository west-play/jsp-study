<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>layout1</title>
</head>
<body>
<table width="400" border="1" cellpadding="0">
<tr>
	<td colspan="2">
		<jsp:include page="/apr07/module/top.jsp" flush="false" />
	</td>
</tr>
<tr>
	<td width="100" valign="top">
		<jsp:include page="/apr07/module/left.jsp" flush="false"></jsp:include>
	</td>
	<td width="300" valign="top">
		레이아웃 1
		<br><br><br>
	</td>
</tr>
<tr>
	<td colspan="2">
		<jsp:include page="/apr07/module/bottom.jsp" flush="false"></jsp:include>
	</td>
</tr>
</table>
</body>
</html>