package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.bean.Tindang;
import model.bo.CheckBO;

/**
 * Servlet implementation class DA_xoatin
 */
@WebServlet("/DA_xoatin")
public class DA_xoatin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DA_xoatin() {
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
		request.setCharacterEncoding("utf-8");
		String idtin = request.getParameter("id");
		CheckBO checkBO = new CheckBO();
		
		if(checkBO.isxoatin(idtin)){

			
			ArrayList<Tindang> arrTD = new ArrayList<Tindang>();
			arrTD = checkBO.getTindang();
			request.setAttribute("arrTD", arrTD);
			RequestDispatcher rd = request.getRequestDispatcher("DA_quanlytinchuadang.jsp");
			rd.forward(request, response);
			
		}
		else{
			
			ArrayList<Tindang> arrTD = new ArrayList<Tindang>();
			arrTD = checkBO.getTindang();
			request.setAttribute("arrTD", arrTD);
			RequestDispatcher rd = request.getRequestDispatcher("DA_quanlytinchuadang.jsp");
			rd.forward(request, response);
			
			
		}
	}

}
