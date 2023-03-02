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
		String kookoodan = "";
		for ( int i = 2; i <= 9; i++) {
			kookoodan = "<a href=" + "\"/lesson01/quiz01?number=\"" + i +  ">" + i + "단" + "</a>";
		%>
		<%= kookoodan %>
	<% } %>
</body>
</html>