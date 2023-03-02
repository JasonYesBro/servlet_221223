package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappingEx01 extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		//한글 패치
		response.setContentType("text/plain");
		response.setCharacterEncoding("utf-8");
		
		//출력
		PrintWriter out = response.getWriter();
		out.println("안녕하세욤!!");
		
		//날짜관련
		Date now = new Date();
		out.println(now);
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd a HH:mm:ss");
		out.println(sdf.format(now));
		
	}
}
