package com.test.quiz;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.SimpleFormatter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Quiz03 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// html 설정과 한글 깨짐방지
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		
		// 준비물
		PrintWriter out = response.getWriter();
		Date now = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd a HH:mm:ss");
		
		
		// 메인 기사제목
		String title = "<h1>[단독] 고양이가 야옹해!</h1>";
		String content = "<hr>끝";
		
		out.println(title + sdf.format(now) + content);
		
	}
	
}
