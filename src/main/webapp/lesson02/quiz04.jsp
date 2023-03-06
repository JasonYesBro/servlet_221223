<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사칙연산 계산기</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
<div class="container w-50" style="min-width: 1355px;">
	<h1>사칙연산 계산기</h1>
	<form action="/lesson02/quiz04_1.jsp" method="post">
		<div class="form-inline">
			<input type="text" class="form-control mx-sm-3 mb-2" name="num1" />
			<select class="custom-select mx-sm-3 mb-2" name="operation" aria-label=".form-select-lg example">
			  	<%--value속성을 지정하게 되면 value속성이 태그안의 값보다 우선시 된다. --%>
			  	<option selected value="+">+</option>
			  	<option value="-">-</option>
			  	<option value="*">*</option>
			  	<option value="÷">÷</option>
			</select>
			<input type="text" class="form-control mx-sm-3 mb-2" name="num2" />
			<button type="submit" class="btn btn-info mx-sm-3 mb-2">계산하기</button>
		</div>
	</form>
</div>
</body>
</html>