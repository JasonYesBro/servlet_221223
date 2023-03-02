package com.test.quiz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/get/quiz01")
public class GetMethodQuiz01 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("text/html");
		resp.setCharacterEncoding("utf-8");
		
		String address = req.getParameter("address");
		String payCard = "";
		String unusableCard = "신한카드";
		int price = 0;
		
		// 출력재료 준비
		PrintWriter out = resp.getWriter();
		
		// 주소에 서울시가 포함되어 있지않으면 배달 불가 지역입니다.
		// 먼저 서울시라는 글자가 포함되어 있다면 다음 코드로 진행
		
//		if(address.contains("서울시")) {
//			payCard = req.getParameter("payCard");
//			
//			// equals method
//			if (payCard.equals(unusableCard)) {
//				
//				out.print("사용불가 카드입니다.");
//				
//			} else {
//				price = Integer.parseInt(req.getParameter("price"));
//
//				out.print(address + "<strong> 배달 준비중 </strong>");
//				out.print("<br>결제금액 : " + price);
//			}
//			
//		} else { // 서울시라는 글자가 포함되어있지 않다면 배달 불가 지역 출력
//			out.print("배달 불가 지역입니다.");
//			
//		} 
		
		// if else if else 코드를 이용하여 (return)까지 사용하여 로직을 짤 수 있다.
		payCard = req.getParameter("payCard");
		
		if (!address.contains("서울시")) {
			out.print("배달 불가 지역입니다.");
		} else if (payCard.equals(unusableCard)) {
			out.print("사용불가 카드입니다.");
		} else {
			price = Integer.parseInt(req.getParameter("price"));

			out.print(address + "<strong> 배달 준비중 </strong>");
			out.print("<br>결제금액 : " + price);
		}
		
	}
}
