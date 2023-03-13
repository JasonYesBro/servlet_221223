<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 1: 유저 추가 ex02.jsp -> InsertEx02.java(서블릿) -> Redirect -> ex02_1.jsp(유저 목록) --%>
	
	<form action="/lesson04/insert_ex02" method="post">
		<p>
			<b>이름</b>
			<input type="text" name="name" />
		</p>
		
		<p>
			<b>생년월일</b>
			<input type="text" name="yyyymmdd" />
		</p>
		<p>
			<b>이메일</b>
			<input type="text" name="email" />
		</p>
		<p>
			<b>자기소개</b>
			<br>
			<textarea rows="5" cols="50" name="introduce"></textarea>
		</p>
		<p>
			<input type="submit" value="회원추가" />
		</p>
	</form>
	
</body>
</html>