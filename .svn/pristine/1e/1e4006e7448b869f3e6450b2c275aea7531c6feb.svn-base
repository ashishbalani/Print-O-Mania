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

import com.dao.AdminUserDao;
import com.dao.AdminUserDaoImpl;
import com.dao.UserDao;
import com.dao.UserDaoImpl;
import com.model.User;
import com.service.UserService;
import com.service.UserServiceImpl;

/**
 * Servlet implementation class Signin
 */
@WebServlet("/SigninController")
public class SigninController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    UserService userService = new UserServiceImpl();
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String buttonClick= request.getParameter("signin");
		if(buttonClick.equals("Delete"))
		{
			Delete(request,response);
			response.sendRedirect("admin.jsp");
		}
		
		else if(buttonClick.equals("Logout")){
	        request.getSession().invalidate();
	        response.sendRedirect("index.jsp");
		}
		else{
			response.sendRedirect("index.jsp");
		}
	}

	private void Delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		String id=request.getParameter("id");
		List ls = new ArrayList();
		User usr=new User();
		usr.setUserId(id);
		UserDao uDao = new UserDaoImpl();
		AdminUserDao aDao = new AdminUserDaoImpl();
		uDao.delete(usr);
		ls=aDao.viewuserdata();
		session.setAttribute("userdata", ls);
		 /*RequestDispatcher reqdispatcher = request.getRequestDispatcher("admin.jsp");
			reqdispatcher.forward(request, response);*/
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId= request.getParameter("userId");
		String password= request.getParameter("passwordsignup");
		
		boolean users = userService.authenticateUsers(userId,password);
//		if(!password.matches("[a-zA-Z]+")){
//			
//			
//			if(password.isEmpty()){
//				request.setAttribute("Err", "Please enter the Password");
//				
//			}
//			else if(!password.matches("[a-zA-Z]+")){
//				request.setAttribute("Err", "Enter alphabets");
//			}
//			RequestDispatcher reqdispatcher = request.getRequestDispatcher("homePage.jsp");
//			reqdispatcher.forward(request, response);
//		}
		 if(users){
			List<User> user = userService.getUserNameById(userId);
			List ls=new ArrayList();
			AdminUserDao adminDao =new AdminUserDaoImpl();
			HttpSession session = request.getSession();
			session.setAttribute("userName",user.get(0).getFname());
			session.setAttribute("userId",userId );
			if(user.get(0).getRole().equals("admin")){
				ls=adminDao.viewuserdata();
				session.setAttribute("userdata", ls);
				 RequestDispatcher reqdispatcher = request.getRequestDispatcher("admin.jsp");
					reqdispatcher.forward(request, response);
				}
				else{
					RequestDispatcher reqdispatcher = request.getRequestDispatcher("homePage.jsp");
					reqdispatcher.forward(request, response);
				}
			
	}
		else{
			request.setAttribute("error", "Enter valid userId and password");
			RequestDispatcher reqdispatcher = request.getRequestDispatcher("homePage.jsp");
			reqdispatcher.forward(request, response);
		}
	}
}
