package model.dao;

import java.sql.*;




public class CheckLoginDAO extends BaseDAO {

	public boolean isValidAccount(String userName, String password) throws ClassNotFoundException {
		try
		{
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			Connection conn=DriverManager.getConnection("jdbc:odbc:DA_CNPM");
			Statement st= conn.createStatement();
			String sql="SELECT * FROM THANHVIEN ";
			ResultSet rs = st.executeQuery(sql);
			while(rs.next())
			{
				if(userName.equals(rs.getString("TenTaiKhoan"))&&password.equals(rs.getString("MatKhau")))
					return true;
			}
			return false;
		}catch(SQLException e)
		{System.out.println("Loi thao tac CSDL " +e.getMessage());
		}
		return false;
	}


	public static void main(String[] args) throws ClassNotFoundException
	{
		CheckLoginDAO ten = new CheckLoginDAO();
		if(ten.isValidAccount("huy", "123456"))
			System.out.print("dung");
		else
			System.out.print("sai");

			
	}
}
