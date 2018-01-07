package com.controller;


import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.TemplateDaoImpl;

/**
 * Servlet implementation class ImagesServlet
 */
@WebServlet("/ImagesServlet")
public class ImagesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println(request.getParameter("item"));
		request.getSession().setAttribute("images", "dont show");
		if(request.getParameter("item")!=null){
			TemplateDaoImpl categ = new TemplateDaoImpl ();
			ArrayList<String> images = new ArrayList<String>();
			images = categ.getImages(request.getParameter("item"));
			RequestDispatcher rs = request.getRequestDispatcher("show_art.jsp");
			request.getSession().setAttribute("images", images);
			rs.forward(request,response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
