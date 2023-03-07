<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배달의 민족쿠</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
	<form action="/lesson02/quiz07_1.jsp" method="post">
	<div class="container mx-auto w-75">
		<h1>메뉴 검색</h1>
		<div class="form-inline">
			<input name="search" class="form-control mr-2">
			<input name="except" class="form-check-input" type="checkbox" id="flexCheckChecked" checked>
			<label class="form-check-label" for="flexCheckChecked">
			  4점 이하 제외
			</label>	
		</div>
			<button type="submit" class="d-block mx-sm-3 btn btn-primary m-2">검색</button>
  	</div>
  	</form>
</body>
</html>