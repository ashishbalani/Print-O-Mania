	package com.controller;

	import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
	import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

	import com.dao.CartDao;
import com.dao.CartDaoImpl;
import com.model.User;
import com.service.UserService;
import com.service.UserServiceImpl;


	/**
	 * Servlet implementation class cartcontroller
	 */
	@WebServlet("/CartController")
	public class CartController extends HttpServlet {
		private static final long serialVersionUID = 1L;
		 UserService userService= new UserServiceImpl();

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		CartDao c = new CartDaoImpl();
		String button= request.getParameter("action");
		String userId=(String) session.getAttribute("userId");
		String productId=request.getParameter("productId");
		String quantity=request.getParameter("quantity");
		if(button.equals("Delete"))
		{
			c.delete(userId, productId);
			System.out.println(".....in cart controller else if get view");
			List list=new ArrayList();
			list=c.getProduct(userId);
			if(!list.isEmpty())
				{
				System.out.print("....."+list.isEmpty());
				session.setAttribute("productImage", list);
				}
			else
			{
				session.setAttribute("productImage", null);
			}
		//	session.setAttribute("quantity", quantity);
			response.sendRedirect("viewCart.jsp");
		}		
		else if(button.equals("View"))
		{
		System.out.println(".....in cart controller else if get view");
		List list=new ArrayList();
		list=c.getProduct(userId);
		if(!list.isEmpty())
			{
			System.out.print("....."+list.isEmpty());
			session.setAttribute("productImage", list);
			}
	//	session.setAttribute("quantity", quantity);
		response.sendRedirect("viewCart.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		CartDao c = new CartDaoImpl();
		List list=new ArrayList();
//		String button= request.getParameter("action");
		String userId=(String) session.getAttribute("userId");
//		String productId=request.getParameter("productId");
		User u=userService.getUserDetails(userId);
		request.setAttribute("address", u.getAddress());
//		if(button.equals("Delete")){
//			c.delete(userId, productId);		
		list=c.getProduct(userId);
//		session.setAttribute("productImage", list);
//		response.sendRedirect("viewCart.jsp");
//		}
//	 if(button.equals("Proceed to checkout")){
		RequestDispatcher reqdispatcher = request.getRequestDispatcher("payment.jsp");
		reqdispatcher.forward(request, response);//		}
	}
}