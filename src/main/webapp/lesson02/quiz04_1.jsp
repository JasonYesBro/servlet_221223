<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산 결과</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>

	<%
		String operation = "";
		long num1 = 0;
		long num2 = 0;
		String result = "";

		num1 = Integer.parseInt(request.getParameter("num1"));
		operation = request.getParameter("operation");
		num2 = Integer.parseInt(request.getParameter("num2"));
		
		if( operation.equals("+") ) {
			result = String.valueOf(num1 + num2);
			
		} else if(operation.equals("-")) {
			result = String.valueOf(num1 - num2);
			
		} else if(operation.equals("*")) {
			operation = "X";
			result = String.valueOf(num1 * num2);
			
		} else {
			result = String.valueOf(num1 / (double)num2);
			
		}
	%>
	<div class="container w-50">
		<h1 class="display-3"> 계산 결과 </h1>
		<p class="display-3"> <%= num1 %> <%= operation %> <%= num2 %> = <span class="display-3 text-info"><%= result %></span></p>
	</div>
	
</body>
</html>