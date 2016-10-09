package model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class BaseDAO {

	Connection conn;
	Statement st;
	ResultSet rs;

	public Connection getConnection() {
		try {
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			String url = "jdbc:odbc:DA_CNPM";
			conn = DriverManager.getConnection(url);
			st = conn.createStatement();
		} catch (Exception e) {
			conn = null;
			e.printStackTrace();
		}
		return conn;
	}

	public void closeConnection() {
		try {
			if (rs != null) {
				rs.close();
			}
			if (st != null) {
				st.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (Exception e) {

		}
	}
	
	
	public boolean isExcute(String sql){
		getConnection();
		try {
			st.executeUpdate(sql);
			closeConnection();
			return true;
		} catch (SQLException e) {
			System.out.println(sql);
			closeConnection();
			return false;
		}
		
	}
}
