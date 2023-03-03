<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz01</title>
</head>
<body>
	<%! 
		int n = 50;
		int sum;
		
		public int sum() {
			sum=0;
			for ( int i = 0; i <= n; i++ ) {
				sum += i;	
			}
			return sum;
		}
	%>
	
	<h2> 1부터 <%= n %>까지의 합은 <%= sum() %></h2>
	<br>
	
	<%
		int[] scores = {80, 90, 100, 95, 80};
	
		int sum1 = 0;
		double avg = 0;
		
		for ( int i = 0; i < scores.length; i++ ) {
			sum1 += scores[i];
		}
		avg = sum1/ (double)scores.length;
		
	%>
	
	<h2> <%= avg %> </h2>
	<br>
		
		
	<%!
	
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});

	
	public int exam() {
		int correct = 0;
		
		for ( int i = 0; i < scoreList.size(); i++ ) {
			if(scoreList.get(i).equals("O")) {
				correct++;
			}
		}
		correct = correct * 10;
		
		return correct;
	}
	
	
	%>
	
	<h2> 채점결과는 <%= exam() %> 점입니다.</h2>
	<br>
	<%
		String birthDay = "20010820";
		String onlyYear = "";
		
		Date nowDate = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd"); 
		
		String now = sdf.format(nowDate);
		
		// year 만 추출
		now = now.substring(0,4);
		onlyYear = birthDay.substring(0,4);
		
		// String 을 int로 형변환하여 나이계산 (한국나이는 +1)
		int age = Integer.parseInt(now) - Integer.parseInt(onlyYear) +1;
		
		
		// out.print(onlyYear);
	%>
	
	<h2><%= birthDay %>의 나이는 <%= age %> 입니다.</h2>
</body>
</html>