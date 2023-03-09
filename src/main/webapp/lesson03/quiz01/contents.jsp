<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String category = request.getParameter("category");
%>
<table class="table">
	<thead>
		<th class="col-4">채널</th>
		<th class="col-4">채널명</th>
		<th class="col-4">카테고리</th>
	</thead>
	<jsp:forward page="template.jsp">
		<jsp:param name="category" value="category"/>
	</jsp:forward>
	
</table>