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
import com.model.Cart;
import com.model.Orders;
import com.model.User;
import com.model.ViewCart;
import com.model.ViewCartDTO;
import com.service.UserService;
import com.service.UserServiceImpl;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * Servlet implementation class OrderController
 */
@WebServlet("/OrderController")
public class OrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			HttpSession session = request.getSession();
			CartDao cartDao = new CartDaoImpl();
			String userId=(String) session.getAttribute("userId");
			List list=new ArrayList();
			list=cartDao.getOrders(userId);
			
			session.setAttribute("orders", list);
			response.sendRedirect("orders.jsp");

//			RequestDispatcher reqdispatcher = request.getRequestDispatcher("orders.jsp");
//			reqdispatcher.forward(request, response);
	}	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		List<Cart> list= new ArrayList<>();
		String cvv= request.getParameter("cvv");
		String userId=(String) session.getAttribute("userId");
		CartDao cartDao = new CartDaoImpl();
		list=cartDao.getProduct(userId);
		Date date = new Date();
		String purchaseDate= dateFormat.format(date);
		if(cvv.isEmpty()){
			List <Cart> viewlist= new ArrayList();
			viewlist = cartDao.getProduct(userId);
			Integer quantity= cartDao.addQuantity(viewlist);
			Integer price =cartDao.calculatePrice(viewlist);
			request.setAttribute("quantity", quantity);
			request.setAttribute("total", price);
			request.setAttribute("error", "Please enter CVV");
			RequestDispatcher reqdispatcher = request.getRequestDispatcher("reviewOrder.jsp");
			reqdispatcher.forward(request, response);
		}
		else if(!(cvv.matches("[0-9]{1,3}"))){
			List <Cart> viewlist= new ArrayList();
			viewlist = cartDao.getProduct(userId);
			Integer quantity= cartDao.addQuantity(viewlist);
			Integer price =cartDao.calculatePrice(viewlist);
			request.setAttribute("quantity", quantity);
			request.setAttribute("total", price);
			request.setAttribute("error", "Please enter valid CVV");
			RequestDispatcher reqdispatcher = request.getRequestDispatcher("reviewOrder.jsp");
			reqdispatcher.forward(request, response);
		}
		/*String productId = request.getParameter("productId");
		String quantity = request.getParameter("quantity");
		System.out.println(dateFormat.format(date));	
		Orders order = new Orders();
		order.setUserId(userId);
		order.setProductId(productId);
		order.setPurchaseDate(purchaseDate);
		order.setQuantity(quantity);*/
		else{
		cartDao.addOrder(list,userId,purchaseDate);
		cartDao.deleteViewCart(userId);
		session.setAttribute("productImage", null);
		response.sendRedirect("thankYou.jsp");
		}
	}

}
