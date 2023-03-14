<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<body>
<!-- 새로운 jsp에서 input 태그로 데이터를 입력 받고, form 태그와 servlet을 이용해서 insert 하세요. insert 후 위에서 만든 목록 출력 페이지로 리다이렉트 하세요. -->
	<h1>즐겨찾기 추가</h1>
	<form action="/lesson04/inserturl" method="get">
	<div class="d-flex flex-column">
		<div>
			<label for="siteName">사이트명 : </label>
			<input type="text" name="siteName" id="siteName" class=""/>
		</div>
		<div>
			<label for="siteAddr">사이트 주소 : </label>
			<input type="text" name="siteAddr" id="siteAddr" class=""/>
			<button type="submit" class="btn btn-info">추가</button>
		</div>
	</div>
	</form>
	
</body>
</html>