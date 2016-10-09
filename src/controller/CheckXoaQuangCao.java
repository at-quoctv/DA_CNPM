package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.QuangCao;
import model.bo.CheckBO;



/**
 * Servlet implementation class SuaVacxin
 */
@WebServlet("/CheckXoaQuangCao")
public class CheckXoaQuangCao extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckXoaQuangCao() {
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
		String MADH = request.getParameter("Ma");
		CheckBO checkbo = new CheckBO();	
		checkbo.XoaQuangcao(MADH);
			ArrayList<QuangCao> arrV = new ArrayList<QuangCao>();
			arrV = checkbo.getQuangCao();
			request.setAttribute("arrV", arrV);
			RequestDispatcher rd = request.getRequestDispatcher("QuangCao.jsp");
			rd.forward(request, response);

		}
}



