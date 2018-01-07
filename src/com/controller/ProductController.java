package com.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.Product;
import com.service.PageService;
import com.service.PageServiceImpl;

/**
 * Servlet implementation class productController
 */
@WebServlet("/ProductController")
public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PageService page=new PageServiceImpl();
		List<Product> hoodies=page.getRecentProducts("hoodie");
		List<Product> tanktop=page.getRecentProducts("tanktop");
		List<Product> tshirt=page.getRecentProducts("tshirt");
		List<Product> mug=page.getRecentProducts("mug");
		List<Product> poster=page.getRecentProducts("poster");
		
		
		HttpSession hs=request.getSession();
		hs.setMaxInactiveInterval(20*60);
		hs.setAttribute("hoodies", hoodies);
		hs.setAttribute("tanktop", tanktop);
		hs.setAttribute("tshirt", tshirt);
		hs.setAttribute("mug", mug);
		hs.setAttribute("poster", poster);
		hs.setAttribute("displaydesign", "yes");
		request.getRequestDispatcher("homePage.jsp").forward(request, response); 
		
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// TODO Auto-generated method stub
	}
		// TODO Auto-generated method stub
	}


