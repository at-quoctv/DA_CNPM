package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.bo.CheckLoginBO;

/**
 * Servlet implementation class CheckLoginServlet
 */
@WebServlet("/CheckLoginServlet")
public class CheckLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setCharacterEncoding("UTF-8");
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		
		CheckLoginBO ch = new CheckLoginBO();
		try {
			if(ch.isValidAccount(userName, password))
			{
				HttpSession session = request.getSession();
				HttpSession session1 = request.getSession();
				String admin="admin";
				String user ="user";
				 session.setAttribute("userName", userName);
				 System.out.print(userName);
				 
				Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
				Connection conn=DriverManager.getConnection("jdbc:odbc:DA_CNPM");
				Statement st= conn.createStatement();
				String sql="SELECT Quyen FROM THANHVIEN where TenTaiKhoan = '"+userName+"'";
				ResultSet rs = st.executeQuery(sql);
				while(rs.next())
				{
					if("admin".equals(rs.getString("Quyen")))
					{
						session1.setAttribute("quyen", admin);
						
						response.sendRedirect("DA_trangcanhan.jsp");
						 
						
					}
					else
					{
						session1.setAttribute("quyen", user);
						response.sendRedirect("DA_trangcanhan.jsp");
					}
					
				}
				
			}
			else
			{
				String thongbao="Tên đăng nhập hoặc mật khẩu không đúng";
				request.setAttribute("Thongbao",thongbao);
				RequestDispatcher rd = request.getRequestDispatcher("dangnhap.jsp");
				rd.forward(request, response);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
