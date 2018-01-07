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

import com.model.CardDetails;
import com.model.User;
import com.service.UserService;
import com.service.UserServiceImpl;

/**
 * Servlet implementation class UpdateController
 */
@WebServlet("/UpdateController")
public class UpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 UserService userService= new UserServiceImpl();


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String button= request.getParameter("action");
		System.out.print(button);
		if(button.equals("Password"))
		{
			response.sendRedirect("updatePassword.jsp");
		}
		else{
			HttpSession session = request.getSession();
			String userId=(String) session.getAttribute("userId");
			User u=userService.getUserDetails(userId);
			session.setAttribute("user", u);
			session.setAttribute("gender1", u.getGender());
			session.setAttribute("country1", u.getCountry());
			session.setAttribute("password", u.getPassword());

			RequestDispatcher reqdispatcher = request.getRequestDispatcher("updateProfile.jsp");
			reqdispatcher.forward(request, response);
	}
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String button= request.getParameter("action");
		User user = new User();
		HttpSession session = request.getSession();
		String userId=(String) session.getAttribute("userId");
		 if(button==null)
		{
			String currentPassword= request.getParameter("currentpassword");
			String password= request.getParameter("passwordsignup");
			String cnfirmPassword=request.getParameter("passwordsignup_confirm");
			User u=userService.getUserDetails(userId);
//			User user=new User();
			String userPassword=u.getPassword();
			if(!currentPassword.equals(userPassword)||password.equals(userPassword)||!cnfirmPassword.equals(password)||currentPassword.isEmpty()||password.isEmpty()||cnfirmPassword.isEmpty()||!password.matches("^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$")){
				if(currentPassword.isEmpty()||password.isEmpty()||cnfirmPassword.isEmpty()){
					request.setAttribute("error", "Enter all details");

				}
			else if(!currentPassword.equals(userPassword)){
				request.setAttribute("error", "Current Password is invalid");
			}
			else if(password.equals(userPassword)){
				request.setAttribute("error", "Enter New Password");

			}
			else if(!password.matches("^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$")){
				request.setAttribute("error","Minimum 8 characters at least 1 Uppercase Alphabet, 1 Lowercase Alphabet, 1 Number and 1 Special Character");
			}
			else if(!cnfirmPassword.equals(password)){
				request.setAttribute("error", "Confirm Password incorrect");

			}
				RequestDispatcher reqdispatcher = request.getRequestDispatcher("updatePassword.jsp");
				reqdispatcher.forward(request, response);
				}
				else {
					u.setPassword(password);
					u.setUserId(userId);
					userService.updateUser(u);

					request.setAttribute("success", "Password Updated Successfully ");
					RequestDispatcher reqdispatcher = request.getRequestDispatcher("updatePassword.jsp");
					reqdispatcher.forward(request, response);
			}
			
		}
		else if(button.equals("Back To Homepage"))
		{
			response.sendRedirect("homePage.jsp");
		}
		
		else if(button.equals("Ship to this Address"))
		{
			String address= request.getParameter("address");
			userService.updateAddress(address,userId);
			User u=userService.getUserDetails(userId);
			request.setAttribute("address", u.getAddress());
			RequestDispatcher reqdispatcher = request.getRequestDispatcher("payment.jsp");
			reqdispatcher.forward(request, response);
			}
		else{

		String gender1=(String) session.getAttribute("gender1");
		String country1=(String) session.getAttribute("country1");
		String firstName= request.getParameter("fname");
		String lastName= request.getParameter("lname");
		String emailId= request.getParameter("emailId");
//		String userName= request.getParameter("userId");
		String gender = request.getParameter("gender");
		String country = request.getParameter("country");
		String password=(String) session.getAttribute("password");
		String subscription=(String) session.getAttribute("subscription");
		String address=(String) session.getAttribute("address");

		user.setEmailId(emailId);
		user.setFname(firstName);
		user.setLname(lastName);
		user.setSubscription(subscription);
		user.setAddress(address);

		if(gender==null){
		user.setGender(gender1);
		}
		else{
			user.setGender(gender);
		}
			
		user.setUserId(userId);
		if(country==null){
			user.setCountry(country1);
			}
			else{
				user.setCountry(country);
			}
//	if(!user.getEmailId().matches("^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$")){
		/*if(!userName.equals(userId)){
			if(!userName.isEmpty()){
				 userExist= userService.checkUserIdExist(userName);
			}
			if(userExist){
				request.setAttribute("error", "UserName already exists");
				
			}
		}*/
		if(user.getFname().isEmpty() || user.getLname().isEmpty() || !user.getEmailId().matches("^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$") ){
			if(user.getFname().isEmpty()){
				request.setAttribute("error", "Enter First Name");
			}
			else if(user.getLname().isEmpty()){
				request.setAttribute("error", "Enter Last Name");
			}
		if(!user.getEmailId().matches("^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$")){
			request.setAttribute("error", "Enter valid emailId");
		}
		User u=userService.getUserDetails(userId);
		session.setAttribute("user", u);
		session.setAttribute("userName", user.getFname());
		RequestDispatcher reqdispatcher = request.getRequestDispatcher("updateProfile.jsp");
		reqdispatcher.forward(request, response);
	}
	else{
		user.setPassword(password);
		userService.updateUser(user);
		request.setAttribute("success", "Profile Updated Successfully");
		User u=userService.getUserDetails(userId);
		session.setAttribute("user", u);
		session.setAttribute("userName", user.getFname());
		RequestDispatcher reqdispatcher = request.getRequestDispatcher("updateProfile.jsp");
		reqdispatcher.forward(request, response);
		}
	}
}
}