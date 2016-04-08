package com.aias.servlet;

import java.io.IOException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.aias.model.userTable;
import com.aias.service.userService;

public class loginServlet extends HttpServlet {
	
	public void doPost(HttpServletRequest rq, HttpServletResponse rp) {

		String username = rq.getParameter("username");
		String password = rq.getParameter("password");
		userTable user = new userTable();
		user.setUsername(username);
		user.setPassword(password);
		try {
			if (new userService().valiUser(user)) {
				HttpSession session=rq.getSession();
				session.setAttribute("user", user);
				rp.sendRedirect("../main.jsp");
			}else{
				rp.sendRedirect("../index.jsp");
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void doGet(HttpServletRequest rq, HttpServletResponse rp) {
		doPost(rq, rp);
	}
}
