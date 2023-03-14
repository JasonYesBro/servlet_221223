<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 페이지입니다.</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
	crossorigin="anonymous"></script>
</head>
<style>
	tr {
		height: 60px;
	}
	td {
		line-height: 60px;
	}
</style>
<body>
	<%
	response.setContentType("text/html");

	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	// Select 가져올 때는 다 가져오면 편함
	String selectQuery = "select * from `favorites` order by id desc";
	
	// jsp에서는 try ~ catch
	try {
		ResultSet rs = ms.select(selectQuery);
	%>
	<div class="container mx-auto">
		<table class="table text-center">
			<thead>
				<tr>
					<th>사이트</th>
					<th>사이트 주소</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>

			<%
			while (rs.next()) {
			%>

				<tr class="align-items-center">
					<td><%= rs.getString("name") %></td>
					<td><a href="<%=  rs.getString("url") %>" target="blank"><%=  rs.getString("url") %></a></td>
					<td><a href="/lesson04/delete_url?id=<%= rs.getInt("id") %>" class="btn btn-danger">삭제</a></td>
				</tr>
			
		<%
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
		}

		ms.disconnect();
		%>
			</tbody>
		</table>
		<div class="container mx-auto text-center">
			<p class="btn btn-primary border"><a href="/lesson04/quiz01/input.jsp" class="text-white">즐겨찾기 추가</a></p>
		</div>
	</div>
</body>
</html>