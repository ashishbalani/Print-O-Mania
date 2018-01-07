package com.service;

import java.util.List;

import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.dao.AdminUserDao;
import com.dao.AdminUserDaoImpl;
import com.dao.PageDao;
import com.dao.PageDaoImpl;
import com.model.Product;
import com.model.PurchasedProducts;

public class AdminServiceImpl implements AdminService{
	PageDao pageDao =new PageDaoImpl();
	AdminUserDao adminuserdao=new AdminUserDaoImpl();
	@Override
	public List<Product> getProducts() {
		List<Product> poducts=pageDao.getProducts();
		return poducts;
	}
	@Override
	public List getEmailAddress() {
		List emailaddress = pageDao.getEmail();
		return emailaddress;
	}
	@Override
	public void sendEmailSubscribsion(List sendingmail,String link) {
			java.util.Properties properties = new java.util.Properties();
	       properties.put("mail.smtp.auth", "true");
	        properties.put("mail.smtp.starttls.enable", "true");
	        javax.mail.Session mailSession = javax.mail.Session.getInstance(properties);
	       for(int i=sendingmail.size();i>=0;i--)
	       {
	       try {
	       	
	           MimeMessage message = new MimeMessage(mailSession);
	  
	          
	           message.setContent("<h1>The following is the link for new product:- <br></h1>"+link+"<br> Have a good Day.","text/html" );
	           message.setSubject("New Product Launched!!!");
	           
	           InternetAddress sender = new InternetAddress((String)sendingmail.get(i),"Mail");
	           InternetAddress receiver = new InternetAddress((String)sendingmail.get(i));
	           message.setFrom(sender);
	           message.setRecipient(Message.RecipientType.TO, receiver);
	            message.saveChanges();
	           
	           javax.mail.Transport transport = mailSession.getTransport("smtp");
	           transport.connect("smtp.gmail.com", 587, "noreply.printomania@gmail.com", "noreply@123");
	            transport.sendMessage(message, message.getAllRecipients());
	           transport.close();
	           
	                     
	       } catch (Exception e) {
	           e.printStackTrace();
	        }
	       }
	
	}
	@Override
	public void deleteProduct(String id) {
		// TODO Auto-generated method stub
		adminuserdao.delete(id);
	}
	@Override
	public void updateOrder(PurchasedProducts purchasedProducts) {
		// TODO Auto-generated method stub
		adminuserdao.updateOrder(purchasedProducts);
		
	}
	@Override
	public void updateProducts(String productId, String quantity,String productQuantity) {
		int updatedQuantity= Integer.parseInt(productQuantity)-Integer.parseInt(quantity);
		System.out.println("Im heree tooo"+updatedQuantity);
		adminuserdao.updateProducts(productId,Integer.toString(updatedQuantity));
		
	}
	@Override
	public String getProduct(String productId) {
		String productQuantity=adminuserdao.getProduct(productId);
		return productQuantity;
	}

}
