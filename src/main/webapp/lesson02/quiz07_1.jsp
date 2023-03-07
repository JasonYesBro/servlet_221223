<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
	
	<%
	List<Map<String, Object>> list = new ArrayList<>();
    Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
	list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
    list.add(map);
    

    
	%>
</body>
	<div class="container mx-auto text-center">
		<h1>검색 결과</h1>
		<table class="table text-center">
			<th>번호</th>
			<th>상호</th>
			<th>별점</th>
			<%
				String result = "";
				
				/* for ( int i = 0; i < list.size(); i++ ) {
					if(list.get(i).get("menu").equals(search)) {
						if((double)list.get(i).get("point") >= 4.0) {
							result += "<tr><td> " + i + "</td><td>" + list.get(i).get("name") + "</td><td>" + list.get(i).get("point") + "</td></tr>";
							
						}
					}
					
				}  */
				
				// 태그 안에 반복문을 활용 코드로 수정
				String search = request.getParameter("search");
				String except = request.getParameter("except");
				
				int i = 0;
				for(Map<String, Object> item : list){
					if(item.get("menu").equals(search)) {	
						//4점이하일 때 skip => 체크가 되어 있을때
						if(except != null && (double)item.get("point") <= 4.0) {
							continue;	
						} else {
							i++;	
			 %>
			 <tr>
				 <td><%= i %></td>
				 <td><%= item.get("name") %></td>
				 <td><%= item.get("point") %></td>
			 </tr>
			 <%
						}
					}
				}
			 %>
			 
			 
			<%-- <%= result %> --%>
		</table>
	</div>
</html>