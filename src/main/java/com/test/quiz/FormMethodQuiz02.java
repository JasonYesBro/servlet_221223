package com.test.quiz;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/form02")
public class FormMethodQuiz02 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("utf-8");
		
		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요."));
		
		String search = "";
		search = req.getParameter("search");

//		System.out.println(list.get(0));
		
		PrintWriter out = resp.getWriter();
		
		out.print("<html><body><title>검색어 입력받기</title>");
		
		// 찾은 횟수를 저장
		int cnt = 0;
		
		// 선생님 방식 
		Iterator<String> iter = list.iterator();
		while(iter.hasNext()) {
			String line = iter.next();
		 	if(line.contains(search)) {
//		 		out.print(line + "<br>");
		 		line = line.replace(search, "<b>" + search + "</b>");
		 		out.print(line+"<br>");
		 	}
		}
		
//		// 내 방식
//		for ( int i = 0; i < list.size(); i++ ) {
// 			if (list.get(i).contains(search)) {
// 				// 검색결과가 있을 때마다 증가
// 				cnt++;
// 				out.print(list.get(i).split(search)[0]);
// 				out.print("<strong>" + search + "</strong>");
// 				out.print(list.get(i).split(search)[1] + "<br>");
//			}
// 			
//		}
//		// 검색결과가 없을 경우
//		if (cnt == 0) {
//			out.print("<p style=\"color:red; display:inline-block;\" ><strong>\"" + search + "\"</strong></p> 에 대한 검색결과가 없습니다.");
//			
//		}
		out.print("</body></html>");
			
	}
	
}
