<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홍당무 마케에 오신걸 환영합니다.</title>
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
.container {
	 height:1100px;
}

header {
	height: 15%;
	background-color: #ff7f4f;
}

.title {
	height: 70%;
}

.nav-bar {
	height: 30%;
}

a {
	color: white;
}
section {
	 height: 85%;
}

.item-container {
	height: 35%;
}

.item {
	width: 33%;
	height: 100%;
	border: 2px solid #ff7f4f;
	margin-right:5px;
}

.item:last-child {
	margin-right:-5px;
}
</style>
<body>
	<div class="container text-center d-flex flex-column" width="1200px">
		<header class="mt-3">
			<div class="title d-flex justify-content-center align-items-center"><h2 class="display-5 text-white">Hong당무 마켓</h2></div>
			<nav class="nav-bar">
				<ul class="nav justify-content-center">
					<li class="nav-item col-4"><a class="nav-link active" href="#">리스트</a></li>
					<li class="nav-item col-4"><a class="nav-link active" href="#">물건 올리기</a></li>
					<li class="nav-item col-4"><a class="nav-link active" href="#">마이 페이지</a></li>
				</ul>
			</nav>
		</header>
		<section class="mt-3 d-flex flex-column">
			<div class="item-container d-flex mb-2">
				<div class="item bg-warning"></div>
				<div class="item bg-warning"></div>
				<div class="item bg-warning"></div>
			</div>
			<div class="item-container d-flex">
				<div class="item bg-warning"></div>
				<div class="item bg-warning"></div>
				<div class="item bg-warning"></div>
			</div>
		</section>
	</div>
</body>
</html>