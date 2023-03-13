package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/delete_url")
public class DeleteUrl extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 쿼리값 받기
		int id = Integer.parseInt(request.getParameter("id"));
		
		// 디비 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// 삭제 쿼리문 실행
		String deleteQuery = "delete from `favorites` where `id` = " + id;
		try {
			ms.update(deleteQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		//디비 해제
		ms.disconnect();
		
		// 삭제 했으면 다시 리다이렉트
		response.sendRedirect("/lesson04/quiz01/quiz01.jsp");
	}
}
