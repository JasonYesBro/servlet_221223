<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
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
	 height:900px;
	 min-width : 750px;
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

p {
	margin: 0 0;
}

.item-container {
	width: 100%;
	height: 35%;
}

.item {
	width: 33%;
	height: 300px;
	border: 2px solid #ff7f4f;
	margin-bottom: 10px;
	padding: 7px;
}

.img-container {
	height: 75%;
}

.info-container {
	height: 25%;
	
}

.goods_img {
	width: 100%;
	object-fit: cover;
	height: 85%;
	
}

.nickname {
	color: #ff7f4f;
}


</style>
<body>
	<div class="container" width="1200px">
		<jsp:include page="header.jsp"></jsp:include>
		<section class="mt-3">
			<div class="item-container d-flex flex-row flex-wrap justify-content-between mb-2">
			<%
				request.getParameter("");
			
				MysqlService ms = MysqlService.getInstance();
				ms.connect();
				
				String selectQuery = "select A.*, B.* from used_goods AS A left join seller AS B on A.id = B.id order by A.id desc;";
				
				ResultSet rs = ms.select(selectQuery);
				
				while (rs.next()) {
					int id = rs.getInt("id");
					// 페이지에 응답해주어야할 데이터의 값이 만약 null 이라면? 처리--
							
			%>
				<div class="item d-flex flex-column rounded">
					<div class="img-container">
						<img src="<%= rs.getString("profileImageUrl") %>" alt="판매물품이미지" width="300px" class="rounded goods_img"/>
					</div>
					<div class="info-container">
						<p class="font-weight-bold"><%= rs.getString("title") %></p>
						<p class="font-weight-lighter"><%= rs.getInt("price") %>원</p>
						<p class="nickname font-weight-bold"><%= rs.getString("nickname") %></p>
					</div>
				</div>
			<%
				}
			%>
			</div>
		</section>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>