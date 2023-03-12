package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/ex01")
public class Ex01 extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/plain");
		
		// 인코딩은 filter가 적용되어 있어 할 필요없음 복기할 필요가 있음
		
		// DB 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect(); //⭐️ 중요함 실질적 디비 연결 메서드
		
		PrintWriter out = resp.getWriter();
		// insert 쿼리
		String insertQuery = "insert into `used_goods` (`sellerId`, `title`, `description`, `price`)"
							+ " values(1, '고양이 간식 팝니다.', '저희 고양이 편식쟁이입네다', 19800)";
		try {
			ms.update(insertQuery);
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
		
		// select 쿼리
		String selectQuery = "select * from used_goods";
		
		try {
			ResultSet rs = ms.select(selectQuery);
			while (rs.next()) { // 결과 행이 있는 동안 수행
				out.println(rs.getInt("id")); // 컬럼네임을 인자로 넣음. (DB의 데이터형에 따라서 메서드 결정)
				out.println(rs.getString("title"));
				out.println(rs.getInt("price"));
				out.println(rs.getString("description"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// DB 해제
		ms.disconnect();
	}
}
