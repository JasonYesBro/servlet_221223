<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="logo mx-3">
	<a href="/lesson03/quiz02/list_layout.jsp"><img src="melong.png" alt="" width=100px; /></a>
</div>
	<div class="search d-flex flex-row input-group w-75">
		<form action="/lesson03/quiz02/info_layout.jsp" class="d-flex flex-row w-100">
			<input type="search" name="title" class="search form-control" placeholder="검색어를 입력하세요."
				aria-label="Recipient's username" aria-describedby="basic-addon2">
			<button type="submit" class="btn input-group-text" id="basic-addon2">검색</button>
		</form>
	</div>