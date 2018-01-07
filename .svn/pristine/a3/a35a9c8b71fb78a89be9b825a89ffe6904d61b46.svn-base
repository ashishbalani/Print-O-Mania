package com.controller;


import java.awt.image.BufferedImage;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.apache.commons.codec.DecoderException;
import org.apache.commons.codec.binary.Base64;

import com.dao.CartDaoImpl;
import com.model.Cart;
import com.model.Product;
import com.model.UploadTemplate;

import org.apache.commons.lang.StringUtils;


/**
 * Servlet implementation class AddtoCart
 */
@WebServlet("/AddtoCart")
public class AddtoCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddtoCart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		String uid = (String)session.getAttribute("userId");
		System.out.println("VAalue of USerId"+uid);
		String pid = request.getParameter("pid");
		String dataURL = request.getParameter("img_val").toString();
		String encodingPrefix = "base64,";
		int contentStartIndex = dataURL.indexOf(encodingPrefix) + encodingPrefix.length();
		byte[] imageData;
		new Base64();
		imageData =  Base64.decodeBase64(dataURL.substring(contentStartIndex).getBytes());
		InputStream is = new ByteArrayInputStream(imageData);
		System.out.println(is);
		Cart c = new Cart();
		c.setIs(is);	
		c.setProductId(pid);
		c.setQuantity(request.getSession().getAttribute("quantity").toString());
		c.setSize(request.getSession().getAttribute("size").toString());
		c.setName(request.getSession().getAttribute("productName").toString());
		c.setPrice(Integer.parseInt(request.getSession().getAttribute("price").toString()));
		if (uid == null)
		{
			System.out.println("in if");
			Random random1 = new Random();
			int random = random1.nextInt(1000) + 200;
			session.setAttribute("userName", "Guest");
			c.setUserId("guest"+String.valueOf(random));
			session.setAttribute("userId", c.getUserId());
		}
		else
		{
		c.setUserId(uid);
		}
		CartDaoImpl cm=new CartDaoImpl();
		cm.saveUserProduct(c,imageData.length);
		List list=new ArrayList();
		list=cm.getProduct(c.getUserId());
		
		
		if(!list.isEmpty()){
			System.out.print("....."+list.isEmpty());
		session.setAttribute("productImage", list);}
	//	session.setAttribute("quantity", quantity);
		response.sendRedirect("viewCart.jsp");
			}

}
