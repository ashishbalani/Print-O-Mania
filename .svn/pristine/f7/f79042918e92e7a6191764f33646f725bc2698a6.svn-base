package com.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.Product;
import com.model.User;
import com.service.PageService;
import com.service.PageServiceImpl;
import com.service.UserService;
import com.service.UserServiceImpl;

/**
 * Servlet implementation class ProductPageController
 */
@WebServlet("/ProductPageController")
public class ProductPageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 UserService userService= new UserServiceImpl();

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductPageController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException,NullPointerException {
		// TODO Auto-generated method stub
		String productID=request.getParameter("id");
		String displaydesign = request.getParameter("displaydesign");
	
		
		System.out.println("in cart controller design variable"+ displaydesign);
		HttpSession hs1=request.getSession();
		
		PageService page=new PageServiceImpl();
		try {
			if(displaydesign!=null){
				//masked image conditions
				List<Product> viewProduct=page.viewMaskedProduct(productID);
				List<byte[]> imageData=new ArrayList<byte[]>();
				
				hs1.setAttribute("viewProduct", viewProduct);
				for(Product p:viewProduct){
					imageData.add(p.getImage().getBytes(1,(int) p.getImage().length()));
				}
				hs1.setAttribute("image", imageData);
				request.getRequestDispatcher("viewMaskedProduct.jsp").forward(request, response);
			}
			else
			{
			List<Product> viewProduct=page.viewProduct(productID);
			List<byte[]> imageData=new ArrayList<byte[]>();
			
			hs1.setAttribute("viewProduct", viewProduct);
			for(Product p:viewProduct){
				imageData.add(p.getImage().getBytes(1,(int) p.getImage().length()));
			}
			hs1.setAttribute("image", imageData);
			request.getRequestDispatcher("viewProduct.jsp").forward(request, response);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		PageService page = new PageServiceImpl();
		String userId=(String) session.getAttribute("userId");

		String button= request.getParameter("action");
		if(button.equals("Buy")){
			User u=userService.getUserDetails(userId);
			session.setAttribute("user", u);

			RequestDispatcher reqdispatcher = request.getRequestDispatcher("payment.jsp");
			reqdispatcher.forward(request, response);
			}
		else if(button.equals("Add to cart")){
		String productId=request.getParameter("productId");
		String quantity=request.getParameter("quantity");
		page.addCartProduct(userId, productId, quantity);
	//	session.setAttribute("addedToCart", "Product successfully added to cart");
		response.sendRedirect("viewProduct.jsp");
		}
		else{
			response.sendRedirect("template.jsp");		
			}
	}
}
