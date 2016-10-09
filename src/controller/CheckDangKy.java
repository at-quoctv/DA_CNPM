package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bo.DangKyBO;

/**
 * Servlet implementation class CheckDangKy
 */
@WebServlet("/CheckDangKy")
public class CheckDangKy extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckDangKy() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		String bietdanh = request.getParameter("bietdanh");
		String userName = request.getParameter("userName");
		String password1 = request.getParameter("password1");
		String password2 = request.getParameter("password2");	
	
		DangKyBO ch = new DangKyBO();	
		if(ch.checkdk(bietdanh, userName, password1, password2))
		{
			RequestDispatcher rd = request.getRequestDispatcher("dangnhap.jsp");
			rd.forward(request, response);		}
		else
		{
			String thongbao="Đăng ký thất bại ";
			request.setAttribute("Thongbao",thongbao);
			RequestDispatcher rd = request.getRequestDispatcher("dangky.jsp");
			rd.forward(request, response);

		}
	
	}

}
