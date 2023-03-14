package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/inserturl")
public class InsertUrl extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 파라미터 값 받기
		// 한번 확인하기
		String siteName = request.getParameter("siteName");
		String siteAddr = request.getParameter("siteAddr");
		
		// DB연결
		MysqlService ms = MysqlService.getInstance();
		
		// 실질적 연결 메서드
		ms.connect();
		
		String insertQuery = "insert into `favorites` (`name`, `url`) values ('"+ siteName + "' , '" + siteAddr + "')";
		
		try {
			// 사이트명과 주소가 널이 아닐시에만 insert 
			// 널이 아닌 빈""값이 넘어오기 때문에 equals메서드로 비교하여 처리함
			if(!siteName.equals("") && !siteAddr.equals("")) {
				ms.update(insertQuery);
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// DB 해제
		ms.disconnect();
		
		// 즐겨찾기 목록으로 redirect 리다이렉트해줌
		response.sendRedirect("/lesson04/quiz01/quiz01.jsp");
		
	}
}
