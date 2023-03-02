package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex04")
public class GetMethodEx04 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		
		// request parameter 꺼내기
		String userId = request.getParameter("userId");
		String userName = request.getParameter("userName");
		String birth = request.getParameter("birth");
		String email = request.getParameter("email");
		
		// 출력
		PrintWriter out = response.getWriter();
//		out.print("userId: " + userId + "<br>");
//		out.print("userName: " + userId + "<br>");
//		out.print("birth: " + birth + "<br>");
//		out.print("email: " + email + "<br>");
		
		// 테이블로 출력
		out.print("<html><head><title>회원정보</title></head><body>");
		out.print("<table border=1>");
		out.print("<tr><th>아이디</th><td>" + userId + "</td></tr>");
		out.print("<tr><th>이름</th><td>" + userName + "</td></tr>");
		out.print("<tr><th>생년월일</th><td>" + birth + "</td></tr>");
		out.print("<tr><th>이메일</th><td>" + email + "</td></tr>");
		
		out.print("</body></html>");
		
		//클론 후 주석 추가
		
		//임시로 작업함
	}
}
