package com.camile.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.camile.service.stuInfoService;

@WebServlet("/student/queryAllStuServlet")
public class queryAllStuServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public queryAllStuServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String osid = request.getParameter("osid");
		List stus = new stuInfoService().queryAllStu();
		HttpSession session = request.getSession();
		session.setAttribute("stus", stus);
		if (osid.equals("query")) {
			response.sendRedirect("../displayStuInfo.jsp");
		} else if (osid.equals("modify")) {
			response.sendRedirect("../modifyStuInfo.jsp");
		} else if (osid.equals("delete")) {
			response.sendRedirect("../deleteStuInfo.jsp");
		}
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException
	 *             if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
