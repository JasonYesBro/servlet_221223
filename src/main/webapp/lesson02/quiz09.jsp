<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
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
	Calendar cal = Calendar.getInstance();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일");
	// out.print(sdf.format(cal.getTime()));

	%>
	<strong>오늘부터 1일</strong><hr>
	<div>
		<%
			int i = 1;
			String date = "";
			
	
			for ( i = 100; i <= 1000; i += 100 ) {
				cal.add(Calendar.DAY_OF_MONTH, i-1);
				date = sdf.format(cal.getTime());
		%>
		<span><%= i %>일 : </span>
		<span><%= date %></span>
		<br>
		<%
				cal.add(Calendar.DAY_OF_MONTH, -i+1);
			
			}
		%>
	</div>
</body>
</html>