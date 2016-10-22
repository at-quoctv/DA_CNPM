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
import javax.websocket.Session;

import model.bean.Tindang;

import model.bo.CheckBO;

/**
 * Servlet implementation class DA_checkdangtin
 */
@WebServlet("/DA_checkdangtin")
public class DA_checkdangtin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DA_checkdangtin() {
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
		
		
		
		Tindang tindang = new Tindang();
		HttpSession session = request.getSession();
		String userName = (String)session.getAttribute("userName");
		
		tindang.setChuyenmuc(request.getParameter("chuyenmuc"));
		tindang.setVung(request.getParameter("vung"));
		//tindang.setBanla(request.getParameter("banla"));
		tindang.setBandangtin(request.getParameter("bdangtin"));
		tindang.setTieuderao(request.getParameter("tieude"));
		tindang.setNoidung(request.getParameter("noidung"));
		tindang.setDienthoai(request.getParameter("sdt"));
		tindang.setGiatien(request.getParameter("gia"));
		tindang.setTrangthai(false);
		tindang.setTenthanhvien(userName);
		System.out.print("session        "+userName);
		
				
		CheckBO checkBO = new CheckBO();
		if(checkBO.isThemtindang(tindang)){
			ArrayList<Tindang> arrTD = new ArrayList<Tindang>();
			arrTD = checkBO.getTindang();
			request.setAttribute("arrTD", arrTD);
			RequestDispatcher rd = request.getRequestDispatcher("DA_trangcanhan.jsp");
			rd.forward(request, response);
		}
		else{
			response.sendRedirect("DA_dangtin.jsp");
		}
	}

}
