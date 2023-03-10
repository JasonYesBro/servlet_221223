<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>당신의 BMI 수치는?</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
	<%
		double height = 0d;
		double weight = 0d;
		double rawBmi = 0d;
		int bmi = 0;
		
		height = Integer.parseInt(request.getParameter("height"));
		weight = Integer.parseInt(request.getParameter("weight"));
		rawBmi = weight / ((height / 100.0) * (height / 100.0)); 
		
		// bmi 계산식
		bmi = (int) Math.round(weight / ((height / 100.0) * (height / 100.0)));
		
		String result = "";
		
		// bmi
		if(bmi <= 20) {
			result =  "저체중";
			
		// 굳이 조건에 bmi >= 21 && 를 포함시켜 동작할 필요가 없음
		// 위 조건에서 해당되는 요청값은 빠져나갔으므로~~
		} else if (bmi <= 25 ) {
			result = "정상";
			
		} else if (bmi <= 30) {
			result = "과체중";
			
		} else {
			result = "비만";
			
		}
	
	%>
	
	<div class="container mx-auto">
		<h1 class="display-5"">BMI 측정결과</h1>
		<!-- 블록요소 안에 인라인블록요소 포함 -->
		<p class="display-3">당신은 <span class="display-3 text-info"> <%= result %> </span> 입니다.</p>
		<p>BMI 수치 : <%= rawBmi %></p>
	</div>
</body>
</html>