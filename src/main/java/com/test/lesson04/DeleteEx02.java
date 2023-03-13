package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/delete_ex02")
public class DeleteEx02 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.valueOf(request.getParameter("id"));
		
		// DB연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		// 쿼리
		String deleteQuery = "delete from `new_user` where `id` = " + id;
		
		try {
			ms.update(deleteQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// DB 해제
		ms.disconnect();
		
		// 유저 목록 페이지로 리다이렉트
		response.sendRedirect("/lesson04/ex02_1.jsp");
	}
}
