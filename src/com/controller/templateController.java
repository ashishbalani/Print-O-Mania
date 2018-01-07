package com.controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Part;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.TemplateDaoImpl;
import com.model.UploadTemplate;

/**
 * Servlet implementation class templateController
 */
@WebServlet("/templateController")
@MultipartConfig(maxFileSize = 16177215)
public class templateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
  

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		HttpSession session=request.getSession();		
		switch(action){
		case "loadApp":{
			request.getRequestDispatcher("template2.jsp").forward(request, response);
		}
		case "loadImage":{
			session.setAttribute("text", "");
			request.getRequestDispatcher("product_template_view.jsp").forward(request, response);
		}
		case "loadText":{
				
		}
		}
		if(action.equals("viewtemp"))
		{
			String userid=(String)session.getAttribute("userId");
			if(userid==null)
			{
				System.out.println("1111111111111");
				request.getRequestDispatcher("template2.jsp").forward(request, response);
			}
			System.out.println("222222222222222");
			TemplateDaoImpl daoImpl=new TemplateDaoImpl();
			List l1=new ArrayList();
			l1=daoImpl.displayTemplate(userid);
			HttpSession s1=request.getSession();
			s1.setAttribute("usertemplate", l1);
			System.out.println("1111111111111222222222222222");
			request.getRequestDispatcher("customiseProduct.jsp").forward(request, response);
		}
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		HttpSession session=request.getSession();
		String param="";
		if(request.getParameter("imagesrc")!=null){
			param=request.getParameter("imagesrc");
			
		}
		
		
		if(action.equals("iText"))
		{
			session.setAttribute("text", request.getParameter("imageText"));
		}
		
		if(action.equals("uploadtemplate"))
		{
			System.out.println("aaaaaaaaaaaaaaaa111111111111111");
			String userid=(String) session.getAttribute("userId");
			InputStream inputStream = null;
			Part file=request.getPart("file");
			String h,name="file";
			if(file!=null)
			{
			//	h=file.getHeader("content-disposition");
			//	name=h.substring(h.indexOf("filename=\"")).split("\"")[1];
				inputStream=file.getInputStream();
			}
			UploadTemplate uploadVO= new UploadTemplate();
			uploadVO.setUserID(userid);
			uploadVO.setFile(file);
			uploadVO.setIs(inputStream);
			TemplateDaoImpl daoImpl=new TemplateDaoImpl();
			daoImpl.upload(uploadVO);
			System.out.println("product addeddddd");
			request.getRequestDispatcher("template2.jsp").forward(request, response);
		//	System.out.println("111111111111111");
		/*	HttpSession session2=request.getSession();
			session2.setAttribute("viewProduct", file);
			request.getRequestDispatcher("templatePage.jsp").forward(request, response);*/
		}
		if(action.equals("viewtemp"))
		{
			String userid=(String)session.getAttribute("userId");
			if(userid==null)
			{
				System.out.println("1111111111111");
				request.getRequestDispatcher("templatePage.jsp").forward(request, response);
			}
			System.out.println("222222222222222");
			TemplateDaoImpl daoImpl=new TemplateDaoImpl();
			List l1=new ArrayList();
			l1=daoImpl.displayTemplate(userid);
			System.out.println("11+++++++++"+l1.size());
			HttpSession s1=request.getSession();
			s1.setAttribute("usertemplate", l1);
			System.out.println("1111111111111222222222222222");
			request.getRequestDispatcher("customiseProduct.jsp").forward(request, response);
		}
	}

}