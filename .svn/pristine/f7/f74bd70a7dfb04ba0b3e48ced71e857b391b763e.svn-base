package com.controller;

import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import java.sql.Date;

import com.model.Product;
import com.service.PageService;
import com.service.PageServiceImpl;

/**
 * Servlet implementation class AddProductController
 */
@WebServlet("/AddProductController")
@MultipartConfig
public class AddProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddProductController() {
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
		HttpSession session= request.getSession();
		Product addingdata = new Product();
		PageService page=new PageServiceImpl();
		
		String productName= request.getParameter("productname");
		String productType= request.getParameter("category");
		String quantity = request.getParameter("Qunatity");
		String size = request.getParameter("size");
		String price =  request.getParameter("Price");
		System.out.println(price);
		Random random1 = new Random();
		int random = random1.nextInt(1000) + 200;
		Part file=request.getPart("file");
		String id = "pr" + String.valueOf(random);
		InputStream is =null;
		if(file!= null)
		{
			
			is=file.getInputStream();
			
		}
		/*Calendar currentDate = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");*/
		java.sql.Date createdDate = new java.sql.Date(Calendar.getInstance().getTime().getTime());
		Integer prices = Integer.parseInt(price);
		
		addingdata.setCreatedDate(createdDate);
		addingdata.setId(id);
		addingdata.setName(productName);
		addingdata.setQuantity(quantity);
		addingdata.setPrice(prices);
		addingdata.setType(productType);
		addingdata.setFile(is);
		addingdata.setSize(size);
		System.out.println(addingdata.getPrice());
		page.addProducts(addingdata);
		
		
		
		RequestDispatcher reqdispatcher = request.getRequestDispatcher("AdminController?action=ViewProducts");
		reqdispatcher.forward(request, response);
		
		
	}

}
