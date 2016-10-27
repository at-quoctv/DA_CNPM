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
 * Servlet implementation class DA_checktrangcanhan
 */
@WebServlet("/DA_checktrangcanhan")
public class DA_checktrangcanhan extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DA_checktrangcanhan() {
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
		String chucnangqtv = request.getParameter("chucnangqtv");
		String thongtincn = request.getParameter("thongtincn");
		String thaydoimatkhau = request.getParameter("thaydoimatkhau");
		String quanlytindang = request.getParameter("quanlytindang");
		String dangtin = request.getParameter("dangtin");
		String tinchuadang = request.getParameter("quanlytinchuadang");
		
				
		if(null!=chucnangqtv)
		{
			HttpSession session1 = request.getSession();
			
			System.out.print((String)session1.getAttribute("quyen"));
			if((String)session1.getAttribute("quyen")=="admin")
			{
			response.sendRedirect("DA_chucnangquantrivien.jsp");
			}
			else{
				response.sendRedirect("DA_trangcanhan.jsp");
			}
		}
		else if(null!=thongtincn)
		{
			response.sendRedirect("TESTTTTT.jsp");
			
		}
		else if(null!= thaydoimatkhau )
		{
			response.sendRedirect("doimatkhau.jsp");

		}
		else if(null != quanlytindang)
		{
			HttpSession session = request.getSession();
			
			
			CheckBO checkBO = new CheckBO();
			ArrayList<Tindang> arrTDD = new ArrayList<Tindang>();
			arrTDD = checkBO.getTindadang((String)session.getAttribute("userName"));
			request.setAttribute("arrTDD", arrTDD);
			RequestDispatcher rd = request.getRequestDispatcher("DA_quanlytindadang.jsp");
			rd.forward(request, response);
		}
		
		else if(null != dangtin)
		{
			response.sendRedirect("DA_dangtin.jsp");
		}
	}

}
