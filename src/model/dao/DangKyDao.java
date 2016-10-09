package model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class DangKyDao {
	private static Connection con = null;
	private static Statement st;
public void adddk(String bietdanh, String userName, String password1, String password2)
{
	password2 ="user";
	try{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	con = DriverManager.getConnection("jdbc:odbc:DA_CNPM");
	st = con.createStatement();
	String sql = "";
	sql = "'"+bietdanh+"', '"+userName+"','"+password1+"','"+password2+"'";
	st.executeUpdate("Insert into THANHVIEN(BietDanh, TenTaiKhoan, MatKhau,Quyen) Values("+sql+")");
	st.close();
	con.close();}
	catch(Exception e)
	{System.out.print(e);}
}
public static void main(String[] args) {
	DangKyDao ch = new DangKyDao();
	ch.adddk("ga", "ga", "ga", "ga");
	
}
}
