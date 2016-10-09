package model.bo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import com.sun.crypto.provider.RSACipher;

import model.dao.DangKyDao;

public class DangKyBO {
public boolean checkdk(String bietdanh, String userName, String password1, String password2)
{
	try{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection conn=DriverManager.getConnection("jdbc:odbc:DA_CNPM");
	Statement st= conn.createStatement();
	String sql="SELECT * FROM THANHVIEN where TenTaiKhoan = '"+userName+"'";
	ResultSet rs = st.executeQuery(sql);
	if(rs.next())
	{
		return false;
	}
	}
	catch(Exception e)
	{
		System.out.print(e);
	}
	DangKyDao ch = new DangKyDao();
if	("".equals(bietdanh)||"".equals(userName)||"".equals(password1)||"".equals(password2))
	{return false;}
if(!(password1.equals(password2)))
{
	return false;
}
if(password1.length()<6||password2.length()<6)
{
	return false;
}
	else{
	ch.adddk(bietdanh, userName, password1, password2);
	return true;
}
}
public static void main(String[] args) {
	DangKyBO bo = new DangKyBO();
	if(bo.checkdk("a", "huy", "a", "b"))
	{
		System.out.print("dung");
	}
	else
		System.out.print("sai");
	
}
}
