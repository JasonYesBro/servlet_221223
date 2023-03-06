<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선택 결과</title>
</head>
<body>
	<%
	
		String nickname = request.getParameter("nickname");
		String hobby = request.getParameter("hobby");
		String animal = request.getParameter("animal");
		// 선택항목이 여러개가 넘어올 경우
		String[] foodArr = request.getParameterValues("food");
		String fruit = request.getParameter("fruit");
	%>
	<table border="1">
		<tr>
			<th>별명</th>
			<td><%= nickname %></td>
		</tr>
		<tr>
			<th>취미</th>
			<td><%= hobby %></td>
		</tr>
		<tr>
			<th>동물</th>
			<td><%= animal %></td>
		</tr>
		<tr>
			<th>음식</th>
			<td>
				<%
					String result = "";
					int cnt = 0;
					if(foodArr != null) {
						for(String food : foodArr) {
							result += food;
							cnt++;
							if(cnt < foodArr.length) {
								result += ",";
							}
						}
					}
				%>
				<%= result %>
			</td>
		</tr>
		<tr>
			<th>과일</th>
			<td><%= fruit %></td>
		</tr>
	</table>
</body>
</html>