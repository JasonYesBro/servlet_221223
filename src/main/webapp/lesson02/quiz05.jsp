<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>단위 변환 계산기</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
	<form action="/lesson02/quiz05_1.jsp" method="post">
		<input type="text" name="num" class="">
		<br>
		<div class="form-check form-check-inline">
			<label class="form-check-label" for="inlineCheckbox1">인치</label>
			<input name="check" class="form-check-input" type="checkbox" id="inlineCheckbox1" value="inch">
		</div>
		<div class="form-check form-check-inline">
			<label class="form-check-label" for="inlineCheckbox2">야드</label>
			<input name="check" class="form-check-input" type="checkbox" id="inlineCheckbox2" value="yard">
		</div>
		<div class="form-check form-check-inline">
			<label class="form-check-label" for="inlineCheckbox3">피트</label>
			<input name="check" class="form-check-input" type="checkbox" id="inlineCheckbox3" value="feet">
		</div>
		<div class="form-check form-check-inline">
			<label class="form-check-label" for="inlineCheckbox4">미터</label>
			<input name="check" class="form-check-input" type="checkbox" id="inlineCheckbox4" value="meter">
		</div>
		<button type="submit" class="btn btn-info mx-sm-3 mb-2">변환하기</button>
	</form>
</body>
</html>