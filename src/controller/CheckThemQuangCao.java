package controller;

import java.io.IOException;
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
 * Servlet implementation class CheckCapnhatVX
 */
@WebServlet("/CheckThemQuangCao")
public class CheckThemQuangCao extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckThemQuangCao() {
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
		
		String ten = request.getParameter("ten");
		String ngay = request.getParameter("ngay");
		String han = request.getParameter("han");
		String gia = request.getParameter("gia");
		String image = request.getParameter("image");
		CheckBO checkBO = new CheckBO();
		if(checkBO.ThemQuangcao(ten, ngay, han, gia,image)){
			ArrayList<QuangCao> arrV = new ArrayList<QuangCao>();
			arrV = checkBO.getQuangCao();
			request.setAttribute("arrV", arrV);
			RequestDispatcher rd = request.getRequestDispatcher("QuangCao.jsp");
			rd.forward(request, response);
		}
		else{
			response.sendRedirect("themQuangCao.jsp");
		}
	}

}
