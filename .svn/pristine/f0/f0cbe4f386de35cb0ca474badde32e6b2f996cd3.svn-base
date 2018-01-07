package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.User;
import com.service.UserService;
import com.service.UserServiceImpl;

/**
 * Servlet implementation class EmailController
 */
@WebServlet("/EmailController")
public class EmailController extends HttpServlet {
	UserService userService= new UserServiceImpl();
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmailController() {
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
		boolean userExist = false;
		System.out.println("Email Controller");
		String emailId= request.getParameter("emailId");
		String error;
		HttpSession session = request.getSession();
		User user = new User();
		user.setEmailId(emailId);
		System.out.println(emailId);
		
		if(!emailId.isEmpty()){
			System.out.println("Email Controller not null check passed");
			 userExist= userService.checkEmailIdExist(emailId);
			 System.out.println(userExist);
		}

		if(!userExist)
		{
			System.out.println("Email Controller failed passed");
			error="Invalid Email address";
			request.setAttribute("error", error);
			RequestDispatcher reqdispatcher = request.getRequestDispatcher("homePage.jsp");
			reqdispatcher.forward(request, response);
		}
		else
		{
			System.out.println("Email Controller check passed");
			int otp=userService.createotp(5);
			String newpass =userService.passgen(8);
			System.out.println("Email Controller check-otp passed");
			user.setEmailId(emailId);
			user.setPassword(newpass);
			userService.updatepassword(user);
			System.out.println("Email Controller check-otp-password set passed");
			userService.sendpasswordmail(user);
			System.out.println("Email Controller check-otp-password-email send passed");
			error="Email Sent";
			request.setAttribute("error", error);
			RequestDispatcher reqdispatcher = request.getRequestDispatcher("homePage.jsp");
			reqdispatcher.forward(request, response);
		}
		//doGet(request, response);
	}

}
