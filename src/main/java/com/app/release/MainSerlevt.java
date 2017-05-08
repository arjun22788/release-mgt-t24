package com.app.release;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author Arjun Date: 06/05/2017
 */
public class MainSerlevt extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static String devLocation = "E:\\My projects\\bootstrap-login-forms";

	public MainSerlevt() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 response.sendRedirect("home.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

 
}
