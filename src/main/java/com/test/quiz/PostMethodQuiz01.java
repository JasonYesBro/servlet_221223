package com.test.quiz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz05")
public class PostMethodQuiz01 extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		
		PrintWriter out = resp.getWriter();
	
		String selfIntro = req.getParameter("selfIntro");
		
		String name = req.getParameter("name");
		
		out.print("<html><head><title>자기소개서</title></head><body>");
		out.print(name + "님 지원이 완료 되었습니다.");
		out.print("<h2>" + "지원 내용" +"</h2>");
		out.print(selfIntro);
		out.print("</body></html>");
	}
}
