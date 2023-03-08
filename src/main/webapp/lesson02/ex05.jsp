<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar</title>
</head>
<body>
<%
	Calendar today = Calendar.getInstance(); // 싱글턴의 getInstance()가 아님 new처럼 계속 객체가 생김
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	
	// Calendar -> Date 객체로 변환 후 format 메소드 적용
	out.print(sdf.format(today.getTime()) + "<br>");
	
	// 어제 날짜
	SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy년 MM월 dd일");
	Calendar yesterday = Calendar.getInstance(); // 싱글턴의 getInstance()가 아님 new처럼 계속 객체가 생김
	
	yesterday.add(Calendar.DATE, -1);
	out.print("어제 날짜 : " + sdf.format(yesterday.getTime()) + "<br>");
	
	//yesterday.add(Calendar.MONTH, -1);
	//out.print("한달전 날짜 : " + sdf1.format(yesterday.getTime()) + "<br>");
	//yesterday.add(Calendar.YEAR, -1);
	//out.print("1년 전 날짜 : " + sdf1.format(yesterday.getTime()) + "<br>");
	
	// 두 날짜 비교
	//compareTo -1, 0, 1
	// a.compareTo(b) a(기준값)이 크면 -1, 같으면 0, 작으면 -1
	int result = today.compareTo(yesterday);
	
	// 1과 같은 값을 비교하지 않고 크냐 조건으로 물어보는게 일반적임
	if(result > 0) {
		out.print("b가 더 크다.");
	}
	
	
	
	
	
%>
</body>
</html>