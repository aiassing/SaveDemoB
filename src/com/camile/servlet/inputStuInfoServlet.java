package com.camile.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.camile.service.stuInfoService;
import com.camilemodel.stuInfo;

public class inputStuInfoServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public inputStuInfoServlet() {
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
		request.setCharacterEncoding("utf-8");
		String nicheng = request.getParameter("nicheng");
		String truename = request.getParameter("truename");
		byte xb = Byte.parseByte(request.getParameter("xb"));
		String csrq = request.getParameter("csrq");
		String zy = request.getParameter("zy");
		System.out.println(zy);
		// String kc=request.getParameter("kc");
		String kcs[] = request.getParameterValues("kc");
		String xqs[] = request.getParameterValues("xq");
		String bz = request.getParameter("bz");
		stuInfo stu = new stuInfo();
		stu.setNicheng(nicheng);
		stu.setTruename(truename);

		stu.setCsrq(csrq);
		// 防空系列
		if (csrq.equals(""))
			stu.setCsrq(null);
		if (kcs != null)
			stu.setKc(kcs);
		if (xqs != null)
			stu.setXq(xqs);
		stu.setBz(bz);
		stu.setZy(zy);
		stu.setXb(xb);
		if (new stuInfoService().addStu(stu))
			response.sendRedirect("../inputStuInfo_success.jsp");
		else
			response.sendRedirect("../inputStuInfo.jsp");

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
