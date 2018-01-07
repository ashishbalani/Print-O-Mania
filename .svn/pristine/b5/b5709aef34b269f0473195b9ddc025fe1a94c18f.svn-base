package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class FilterProducts
 */
@WebServlet("/FilterProducts")
public class FilterProducts extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FilterProducts() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action=request.getParameter("id");
		if(action.equals("clothings"))
		{
			request.setAttribute("type", "clothing");
			request.getRequestDispatcher("clothings.jsp").forward(request, response);
		}
		if(action.equals("mugs"))
		{
			request.setAttribute("type", "mugs");
			request.getRequestDispatcher("tshirts.jsp").forward(request, response);
		}
		if(action.equals("posters"))
		{
			request.setAttribute("type", "poster");
			request.getRequestDispatcher("tshirts.jsp").forward(request, response);
		}
		if(action.equals("tshirt"))
		{
			request.setAttribute("type", "tshirt");
			request.getRequestDispatcher("tshirts.jsp").forward(request, response);
		}
		if(action.equals("tanktop"))
		{
			request.setAttribute("type", "tanktop");
			request.getRequestDispatcher("tshirts.jsp").forward(request, response);
		}
		if(action.equals("hoodies"))
		{
			request.setAttribute("type", "hoodies");
			request.getRequestDispatcher("tshirts.jsp").forward(request, response);
		}
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action=request.getParameter("action");
		if(action.equals("clothings"))
		{
			request.setAttribute("type", "clothing");
			request.getRequestDispatcher("clothings.jsp").forward(request, response);
		}
		if(action.equals("mugs"))
		{
			request.setAttribute("type", "mugs");
			request.getRequestDispatcher("tshirts.jsp").forward(request, response);
		}
		if(action.equals("posters"))
		{
			request.setAttribute("type", "poster");
			request.getRequestDispatcher("tshirts.jsp").forward(request, response);
		}
		if(action.equals("tshirt"))
		{
			request.setAttribute("type", "tshirt");
			request.getRequestDispatcher("tshirts.jsp").forward(request, response);
		}
		if(action.equals("tanktop"))
		{
			request.setAttribute("type", "tanktop");
			request.getRequestDispatcher("tshirts.jsp").forward(request, response);
		}
		if(action.equals("hoodies"))
		{
			request.setAttribute("type", "hoodies");
			request.getRequestDispatcher("tshirts.jsp").forward(request, response);
		}

	}

}