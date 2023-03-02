package com.test.quiz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Quiz04 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest requesr, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		
		// 출력
		PrintWriter out = response.getWriter();
		
		//리스트 출력
		String listOpen = "<li>";
		String listClose = "</li>";
		
		for ( int i = 1; i < 31; i++ ) {
			out.println(listOpen + i + "번째 리스트" + listClose);
			
		}
				
	}
}
