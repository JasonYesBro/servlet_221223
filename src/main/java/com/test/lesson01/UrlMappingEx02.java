package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 웹서블릿 어노테이션을 이용하여 불편한xml 작업은 단순화할 수 있다.
@WebServlet("/lesson01/ex02")
public class UrlMappingEx02 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 한글 깨짐 방지
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		
		// 출력 준비물 생성
		PrintWriter out = response.getWriter();
//		out.print("안녕하세욘?");
//		out.print("안녕하세욘?");
//		out.print("<h1>안녕하세욘?</h1>");

		
		int sum = 0;
		for ( int i = 1; i <= 10; i++ ) {
			sum += i;
		}
		out.print("<html><head><title>합계</title></head><body>"); 
		out.print("합계:<strong>" + sum );
		out.print("</body></html>");
		
		
		
		
		
		
		
	}
}
