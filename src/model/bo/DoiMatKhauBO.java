package model.bo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class DoiMatKhauBO {
	private static Connection con = null;
	private static Statement st;
	public boolean checkdoi(String userName, String matkhaucu, String matkhaumoi1, String matkhaumoi2) {
		try{
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			con=DriverManager.getConnection("jdbc:odbc:DA_CNPM");
			st= con.createStatement();
			String sql="SELECT MatKhau FROM THANHVIEN where TenTaiKhoan = '"+userName+"'";
			ResultSet rs = st.executeQuery(sql);
			String tam = "";
			while(rs.next())
			{
				tam = rs.getString("MatKhau");
				//System.out.print(rs.getString("MatKhau"));

			}
			if(!(tam.equals(matkhaucu)))
			{
				return false;
			}
			con.close();
			st.close();
			}
			catch(Exception e)
			{
				System.out.print("bbb");
				System.out.print(e);
			}
		if("".equals(matkhaucu)||"".equals(matkhaumoi1)||"".equals(matkhaumoi2)||matkhaumoi1.length()<6)
		{return false;}
		if(!(matkhaumoi1.equals(matkhaumoi2)))
		{
			return false;
		}
		else
		{
			try {
				Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		
			con = DriverManager.getConnection("jdbc:odbc:DA_CNPM");
			st = con.createStatement();
			String sql;
			sql = "UPDATE THANHVIEN SET MatKhau='"+matkhaumoi1+"' WHERE TenTaiKhoan='"+userName+"'";
			st.executeUpdate(sql);
			st.close();
			con.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
			System.out.print(e);
			}
			return true;
		}
	}
	public static void main(String[] args) {
		DoiMatKhauBO doi = new DoiMatKhauBO();
		if(doi.checkdoi("nanghuy", "123456", "asdfgh1", "asdfgh1"))
		{System.out.print("dung");}
		else
		{System.out.print("sai");}

		
	}
}
