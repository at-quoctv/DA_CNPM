package model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class UpdatettDAO {

	public void updatett(String update, String ten, String sodienthoai,
			String diachi, String banla) {
		try {
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			Connection conn = DriverManager.getConnection("jdbc:odbc:DA_CNPM");
			Statement st = conn.createStatement();
			String sql = "update THANHVIEN set BietDanh = '"+ten+"',SoDienThoai='"+sodienthoai+"',DiaChi = '" +diachi+"',ToChuc = '"+banla+
					"' where TenTaiKhoan ='"+update +"'";
			st.executeUpdate(sql);

			
			conn.close();
		} catch (Exception ex) {
			ex.printStackTrace();
			System.out.print("sql");
		}
		
	}

	}
		


