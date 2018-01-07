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
import com.model.Product;
import com.model.PurchasedProducts;
import com.service.AdminService;
import com.service.AdminServiceImpl;

/**
 * Servlet implementation class AdminController
 */
@WebServlet("/AdminController")
public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		AdminService adminService = new AdminServiceImpl();
		String button= request.getParameter("action");
		String id = request.getParameter("id");
		HttpSession session = request.getSession();
		if(button.equals("ViewUsers"))
		{
			response.sendRedirect("admin.jsp");
		}
		
		else if(button.equals("ViewProducts"))
		{
			List<Product> allproducts=adminService.getProducts();
			session.setAttribute("AdminProducts", allproducts);
			response.sendRedirect("AdminViewProducts.jsp");
		}
		
		else if(button.equals("Mail"))
		{
			List sendingmail=adminService.getEmailAddress();
			int s = sendingmail.size();
			if(s > 0)
			{
			String link = "http://localhost:8082/Print_O_Mania/ProductPageController?id="+id;
			adminService.sendEmailSubscribsion(sendingmail,link);
			request.setAttribute("error", "Email send successfully");
			RequestDispatcher reqdispatcher = request.getRequestDispatcher("AdminViewProducts.jsp");
			reqdispatcher.forward(request, response);
			}
			
		}
		else if(button.equals("AddProducts"))
			{
				
				response.sendRedirect("AdminAddProduct.jsp");
			}
		
		else if(button.equals("delete"))
		{
			
			
			System.out.println(id);
			AdminService adminService2=new AdminServiceImpl();
			adminService.deleteProduct(id);
			List<Product> allproducts=adminService.getProducts();
			session.setAttribute("AdminProducts", allproducts);
			request.setAttribute("error", "Deleted successfully");
			RequestDispatcher reqdispatcher = request.getRequestDispatcher("AdminViewProducts.jsp");
			reqdispatcher.forward(request, response);
		}
		
		else if(button.equals("ViewOrders"))
		{
			
			CartDao cartDao = new CartDaoImpl();
			String userId=(String) session.getAttribute("userId");
			List list=new ArrayList();
			list=cartDao.getAdminOrders(userId);
			System.out.println("Skype");
			System.out.println(list.size());
			session.setAttribute("orders", list);
			response.sendRedirect("AdminOrders.jsp");
		}
		else if(button.equals("updateOrder"))
		{
			String productId = request.getParameter("productId");
			String status= request.getParameter("status");
			String quantity= request.getParameter("quantity");

			PurchasedProducts purchasedProducts = new PurchasedProducts();
			
			purchasedProducts.setOrderStatus(status);
			purchasedProducts.setProductId(productId);
			adminService.updateOrder(purchasedProducts);
			String productQuantity=adminService.getProduct(productId);
			System.out.println("Im hereeee...."+productQuantity);
			adminService.updateProducts(productId,quantity,productQuantity);
			CartDao cartDao = new CartDaoImpl();
			String userId=(String) session.getAttribute("userId");
			List list=new ArrayList();
			list=cartDao.getAdminOrders(userId);
			System.out.println("Skype");
			System.out.println(list.size());
			session.setAttribute("orders", list);
			response.sendRedirect("AdminOrders.jsp");
		}
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
