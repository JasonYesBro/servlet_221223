<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유저 목록</title>
</head>
<body>
	유저 목록
	<%
		//DB연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		String selectQuery = "select * from new_user; ";
		ResultSet rs = ms.select(selectQuery);
	%>
	
	<%-- 2. 유저 삭제 : ex02_1.jsp (유저목록) -> 삭제버튼 -> DeleteEx02 서블릿 (delete DB) -> ex02_1.jsp로 리다이렉트 --%>
	
	<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>생년월일</th>
				<th>이메일</th>
				<th>자기소개</th>
				<th>삭제</th>
			</tr>
		</thead>
		
		<tbody>
		
	
	<%		
		while(rs.next()) {
			
			
	%>
				
			<tr>
				<td><%= rs.getInt("id") %></td>
				<td><%= rs.getString("name") %></td>
				<td><%= rs.getString("yyyymmdd") %></td>
				<td><%= rs.getString("email") %></td>
				<td><%= rs.getString("introduce") %></td>
				<td><a href="/lesson04/delete_ex02?id=<%= rs.getInt("id") %>">삭제</a></td>
			</tr>
	<%
		}
	%>
		</tbody>
	</table>
	
	<%
		ms.disconnect();
	%>
</body>
</html>