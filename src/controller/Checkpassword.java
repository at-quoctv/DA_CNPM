package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.bo.DoiMatKhauBO;

/**
 * Servlet implementation class ceckpassword
 */
@WebServlet("/ceckpassword")
public class Checkpassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Checkpassword() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setCharacterEncoding("UTF-8");
		String matkhaucu = request.getParameter("matkhaucu");
		String matkhaumoi1 = request.getParameter("matkhaumoi1");
		String matkhaumoi2 = request.getParameter("matkhaumoi2");
	HttpSession session= request.getSession();
		
		String userName=(String)session.getAttribute("userName");
		DoiMatKhauBO ch = new DoiMatKhauBO();
		if(ch.checkdoi(userName, matkhaucu, matkhaumoi1, matkhaumoi2))
		{
			RequestDispatcher rd = request.getRequestDispatcher("DA_trangcanhan.jsp");
			rd.forward(request, response);
		}
		else
		{	RequestDispatcher rd = request.getRequestDispatcher("doimatkhau.jsp");
		rd.forward(request, response);}	
	}

}
