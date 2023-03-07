<%@page import="java.util.List"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>단위 변환 결과</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
	<%!
		String[] units = {"inch", "yard", "feet", "meter"};
		List<String> strList = new ArrayList<>(Arrays.asList(units));
		
		public String transferUnit(String unit, int num) {
			double result = 0d;
			if (unit.equals("inch")) {
				result = num * 0.393701;
			} else if (unit.equals("yard")) {
				result = num * 0.0109361;
			} else if (unit.equals("feet")) {
				result = num * 0.0328084;
			} else if (unit.equals("meter")) {
				result = num * 0.01;
			}
			return (result + " " + unit);
		}
	%>
	
	<h2>길이 변환 결과</h2>
	<%
		/* String[] units = {"inch", "yard", "feet", "meter"}; */
	
		int num = Integer.parseInt(request.getParameter("num"));
		
		String[] checkUnits = null; 
		checkUnits = request.getParameterValues("check");
		
		/* List<String> strList = new ArrayList<>(Arrays.asList(units)); */
		
		if (checkUnits != null) {
			List<String> strList1 = new ArrayList<>(Arrays.asList(checkUnits));
			
			out.print("<h3>" + num + "cm </h3><hr>");
			for (String a : strList) {
				for (String b : strList1) {
					if(a.equals(b)) {
						out.print("<h3>" + transferUnit(b, num) + "</h3>");
					}
				}
			}
		} else {
			
			out.print("아무것도 입력 안했습니다.");
		}
			
	%>
	
</body>
</html>