<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멜롱</title>
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
a {
	text-decoration: none;
	color: black;
}

#wrap {
	width: 1200px;
}

header {
	width: 700px;
	height: 80px;
}

.search {
	margin-right: 3px;
}

.btn {
	background-color:#ffffff;
	font-weight:bold;
}

.btn:hover {
	background-color:#04cd3b;
	color:white;
}

nav {
	width: 500px;
	height: 50px;
}

.nav {
	line-height: 50px;
	font-weight: bold;
}

section {
	height: 900px;
}

footer {
	height: 100px;
}

</style>
<body>
	<div id="wrap" class="mx-auto" width="1200px;">
		<div id="container">
			<header class="d-flex justify-content-start align-items-center">
				<jsp:include page="header.jsp"></jsp:include>
			</header>
			<nav class="menu">
				<jsp:include page="menu.jsp"></jsp:include>
			</nav>
			<section class="d-flex flex-column">
				<jsp:include page="info_contents.jsp"></jsp:include>
			</section>
			<footer class="">
				<jsp:include page="footer.jsp"></jsp:include>
			</footer>
		</div>
	</div>
</body>
</html>