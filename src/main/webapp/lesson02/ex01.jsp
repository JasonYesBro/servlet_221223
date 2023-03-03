<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<!-- HTML의 주석 -->
	
	<%-- JSP 의 주석 -> 페이지소스에서는 보이지 않는다. --%>
	<%
		// 자바문법 시작
		// scriptlet 구문 (구) 방식
		// html 안에서 자바 code와 결합된 방식으로 별로 좋지 않은 코드의 예임
		int sum = 0;
		
		for ( int i = 0; i <= 10; i++ ) {
			sum += i;
		}
		
		List<String> list = new ArrayList<>();
	%>
	<strong> 합계 : </strong>
	<input type="text" value="<%= sum %>"/>
	<br>
	
	<%!
		// 선언문 - 클래스 같은 느낌임
		// 필드와 메서드를 선언하는 선언부
		
		private int num = 100;
		
		//메서드
		public String getHelloWorld() {
			return "HelloWorld";
		}
		
	%>
	
	<%= getHelloWorld() %>
	<br>
	
	<%= num + 200 %>
	
	
	
</body>
</html>