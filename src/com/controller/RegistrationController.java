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
 * Servlet implementation class RegistrationPage
 */
@WebServlet("/RegistrationController")
public class RegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 UserService userService= new UserServiceImpl();
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("registration.jsp");
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String button= request.getParameter("action");

		if(button.equals("Back To Homepage")){
			response.sendRedirect("homePage.jsp");
			}
		else{
		HttpSession session = request.getSession();
		boolean userExist = false;
		String firstName= request.getParameter("fname");
		String lastName= request.getParameter("lname");
		String emailId= request.getParameter("emailId");
		String userId= request.getParameter("userId");
		String password= request.getParameter("passwordsignup");
		String role= request.getParameter("role");
		String gender = request.getParameter("gender");
		String country = request.getParameter("country");
		String subscription = request.getParameter("subscription");
		String address = request.getParameter("address");

		User user = new User();
		user.setEmailId(emailId);
		user.setFname(firstName);
		user.setLname(lastName);
		user.setPassword(password);
		user.setUserId(userId);
		user.setRole(role);
		user.setGender(gender);
		user.setCountry(country);
		user.setSubscription(subscription);
		user.setAddress(address);
		if(!userId.isEmpty()){
			 userExist= userService.checkUserIdExist(userId);
		}
		if(user.getFname().isEmpty() || user.getLname().isEmpty() || user.getUserId().isEmpty()|| !user.getPassword().matches("^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$") || !user.getEmailId().matches("^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$") || userExist==true ){
			if(user.getFname().isEmpty()){
				request.setAttribute("error", "Enter First Name");
			}
			else if(user.getLname().isEmpty()){
				request.setAttribute("error", "Enter Last Name");
			}
			else if(user.getUserId().isEmpty()){
				request.setAttribute("error", "Enter User Name");
			}
			else if(userExist){
			request.setAttribute("error", "UserName already exists");
		}
		else if(!user.getEmailId().matches("^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$")){
			request.setAttribute("error", "Enter valid emailId");

		}
		else if(!user.getPassword().matches("^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$")){
			request.setAttribute("error","Minimum 8 characters at least 1 Uppercase Alphabet, 1 Lowercase Alphabet, 1 Number and 1 Special Character");
		}
		RequestDispatcher reqdispatcher = request.getRequestDispatcher("registration.jsp");
		reqdispatcher.forward(request, response);
		}
		else{
			userService.addUser(user);
			session.setAttribute("userName", user.getFname());
			session.setAttribute("userId", user.getUserId());
			session.setAttribute("UserRegisteredMsg", "User Registered Succesfully");
			RequestDispatcher reqdispatcher = request.getRequestDispatcher("homePage.jsp");
			reqdispatcher.forward(request, response);
		}
	}
	}
}
