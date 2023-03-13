package com.test.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mysql.jdbc.Driver;

public class MysqlService {
	// 추상적으로 생각해서 간단한 흐름만 파악하기
	
	// field
	private static MysqlService mysqlService = null;
	
	private String url = "jdbc:mysql://localhost:3306/opentutorials";
	private String id = "root";
	private String password = "root";
	
	private Connection conn;
	private Statement stmt;
	private ResultSet rs;
	
	
	// method
	// 생성자 호출을 막음 - 싱글톤
	private MysqlService() {
		
	}
	
	// 싱글톤의 특징
	public static MysqlService getInstance() {
		if(mysqlService == null) {
			mysqlService = new MysqlService();
		}
		return mysqlService;
	}
	
	// DB접속
	public void connect() {
		// 1. driver loading on memory
		try {
			DriverManager.registerDriver(new Driver());
			
			// 2. DB connection
			// return connection object -> store in conn
			conn = DriverManager.getConnection(url, id, password);
			
			// 3. query ready -> statement
			stmt = conn.createStatement();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	// disconnection DB
	public void disconnect() {
		try {
			stmt.close();
			conn.close();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
	
	// CRUD => R / CUD
	
	// R : read == select
	// query를 만든 개발자가 처리를 해줘야 함 그러니까 throws~
	public ResultSet select(String query) throws SQLException {
		rs = stmt.executeQuery(query);
		return rs;
	}
	
	// CUD = insert, update, delete , return nothing
	public void update(String query) throws SQLException {
		stmt.executeUpdate(query);
	}
	
}
