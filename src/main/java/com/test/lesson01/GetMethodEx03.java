package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex03")
public class GetMethodEx03 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/json");
		response.setCharacterEncoding("utf-8");

		//쿼리스트링에 있는 파라미터 꺼내기
		String userId = request.getParameter("user_id");
		String userName = request.getParameter("user_name");
		
		// age가 없으면 null이다.
//		int userAge = 0;
//		if(userAge == null) {
//			userAge
//		}
		int userAge = Integer.parseInt(request.getParameter("user_age"));
		
		PrintWriter out = response.getWriter();
		
//		out.println("응답");
//		out.println("user_id : " + userId);
//		out.println("user_name : " + userName);
//		out.println("user_name : " + userAge);
		
		// JSON형태로 보여주기
		//""로 감싸주는 것이 일반적인 규칙임
		// 크롬의 JSON formatter 확장자 프로그램을 이용하여 코드에 오류가 있는지 더욱 자세히 볼 수 있음
		out.print("{\"user_id\":\"" + userId + "\", " 
				 + "\"user_name\":\"" + userName + "\", " 
				 + "\"user_age\":" + userAge + "}");
		

	}
}
