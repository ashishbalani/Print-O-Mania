package com.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.SearchDao;

/**
 * Servlet implementation class SearchController
 */
@WebServlet("/SearchController")
public class SearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String search=request.getParameter("search");
		SearchDao s=new SearchDao();
		//System.out.println(search);
		List image=s.searchItem(search);
		
		if (!(image.size()==0))	{		
			HttpSession se = request.getSession();
		se.setAttribute("image", image);
		request.getRequestDispatcher("searchResult.jsp").forward(request, response);		
		}
		else if(search.contains("mug"))
		{
			request.setAttribute("type", "mugs");
			request.getRequestDispatcher("tshirts.jsp").forward(request, response);
		}
		else if(search.contains("cloth"))
		{
		
			request.getRequestDispatcher("clothings.jsp").forward(request, response);
		}
		
		else if( search.contains("poster"))
		{
			request.setAttribute("type", "poster");
			request.getRequestDispatcher("tshirts.jsp").forward(request, response);
		}
		else if(search.contains("shirt"))
		{
			request.setAttribute("type", "tshirt");
			request.getRequestDispatcher("tshirts.jsp").forward(request, response);
		}
		else if(search.contains("top"))
		{
			request.setAttribute("type", "tanktop");
			request.getRequestDispatcher("tshirts.jsp").forward(request, response);
		}
		else if(search.contains("hoodie"))
		{
			request.setAttribute("type", "hoodies");
			request.getRequestDispatcher("tshirts.jsp").forward(request, response);
		}
		else{
		request.getRequestDispatcher("homePage.jsp").forward(request, response);
		}
	}

}
