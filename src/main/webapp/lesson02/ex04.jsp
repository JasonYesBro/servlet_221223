<%@page import="java.util.*"%>
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
	// {"korean"=85, "english"=72, "math"=90, "science"=100}
	Map<String, Integer> scoreMap = new HashMap<>();
	scoreMap.put("korean", 85);
	scoreMap.put("english", 72);
	scoreMap.put("math", 90);
	scoreMap.put("science", 100);
	
%>

	<table border="1">
	<%
	// keySet() 은 키들을 모두 모아주는 역할
	
		Iterator<String> iter = scoreMap.keySet().iterator();
		while(iter.hasNext()) {
			String key = iter.next();
			
	%>
		<tr>
			<th><%--<%= key %> --%>
				<%
					if(key.equals("korean")) {
						out.print("국어");
					} else if (key.equals("english")) {
						out.print("영어");
					} else if(key.equals("math")) {
						out.print("수학");
					} else if(key.equals("science")) {
						out.print("과학");
					}
				
				%>
			</th>
			<td><%= scoreMap.get(key) %></td>
		</tr>
	<%
		}
	%>
	</table>
</body>
</html>