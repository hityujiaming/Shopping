package com.wy.tool;

import java.sql.*;

public class JDBConnection {
	private String dbDriver = "com.mysql.jdbc.Driver"; // ���ݿ������

	private String url = "jdbc:mysql://localhost:3306/db_shopping"; // URL��ַ
	//private String url = "jdbc:mysql://47.75.7.46:3306/db_shopping";

	public Connection connection = null;

	public JDBConnection() throws Exception {
		try {
			Class.forName(dbDriver).newInstance(); // �������ݿ�����
			System.out.println("kkkkkkkkkkkkkkkkkkk00000");
			connection = DriverManager.getConnection(url, "root", "iloveshark77"); // �������ݿ�
			System.out.println("kkkkkkkkkkkkkkkkkkk11111"+connection);
		} catch (Exception ex) {
			System.out.println("connection error by yu");
			throw ex;
		}
	}
}
