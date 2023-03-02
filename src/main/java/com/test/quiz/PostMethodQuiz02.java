package com.test.quiz;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz06")
public class PostMethodQuiz02 extends HttpServlet {
	
	// doPost 메소드 바깥쪽에 위치
	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "marobiana");
	        put("password", "qwerty1234");
	        put("name", "신보람");
	    }
	};
	
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		
		PrintWriter out = resp.getWriter();
		
		String id ="";
		String password = "";
		
		id = req.getParameter("userId");
		password = req.getParameter("userPwd");
		
		// 로그인 일치 여부
		// 예외가 되는 상황을 먼저 작성함.
		// DB에서 가져온 값에 equls()로 클라이언트가 요청한 데이터를 비교할건지 순서?
		if(!userMap.get("id").equals(id)) {
			out.print("id가 일치하지 않습니다.");
		} else if (!userMap.get("password").equals(password)) {
			out.print("비밀번호가 일치하지 않습니다.");
		} else {
			out.print(userMap.get("name") + "님 환영합니다!");
		}
		
	}
}
