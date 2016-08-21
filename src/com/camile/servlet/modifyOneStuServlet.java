package com.camile.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.camile.service.stuInfoService;
import com.camilemodel.stuInfo;

@WebServlet("/student/modifyOneStuServlet")
public class modifyOneStuServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public modifyOneStuServlet() {
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

		int id = Integer.parseInt(request.getParameter("id"));
		stuInfo stu = new stuInfoService().queryStubyID(id);
		HttpSession session = request.getSession();
		session.setAttribute("stu", stu);
		response.sendRedirect("../modifyOneStu.jsp");
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
