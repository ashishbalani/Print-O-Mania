package com.service;

import java.util.List;
import java.util.Random;

import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.dao.UserDao;
import com.dao.UserDaoImpl;
import com.model.CardDetails;
import com.model.User;

public class UserServiceImpl implements UserService {
	 UserDao userDao = new UserDaoImpl(); 

	public boolean checkUserIdExist(String userId) {
		boolean users= userDao.checkUserIdExist(userId);		
        return users;
	}
	@Override
	public void addUser(User user) {
		userDao.addUser(user);
		
	}
	public boolean authenticateUsers(String userId, String password) {
		boolean users= userDao.authenticateUsers(userId,password);		
        return users;
	}
	public List<User> getUserNameById(String userId) {
		List<User> user = userDao.getUserNameById(userId); 	
		return user;
	}
	@Override
	public User getUserDetails(String userId) {
		User user = userDao.getUserDetails(userId); 	
		return user;
	}
	@Override
	public void updateUser(User user) {
		userDao.updateUser(user);
	}
	@Override
	public void updateAddress(String address, String userId) {
		userDao.updateAddress(address, userId);
	}
	@Override
	public boolean checkEmailIdExist(String emailId) {
		// TODO Auto-generated method stub
		boolean users= userDao.checkEmailIdExist(emailId);		
        return users;
	}
	@Override
	public int createotp(int range) {
		// TODO Auto-generated method stub
		int otp = 0;

	       if (range > 5 || range < 1)
	           range = 3;

	       for (int i = 0; i < range; i++) {

	           int x = new Random().nextInt(9);

	           if (x == 0 && i == 0)
	               i--;
	           else
	               otp = (otp * 10) + x;
	       }
	       
	       
	       return otp;
	       
		
	}
	@Override
	public void updatepassword(User user) {
		// TODO Auto-generated method stub
		userDao.updatepassword(user);
		
	}
	@Override
	public void sendpasswordmail(User user) {
		// TODO Auto-generated method stub
		java.util.Properties properties = new java.util.Properties();
	       properties.put("mail.smtp.auth", "true");
	        properties.put("mail.smtp.starttls.enable", "true");
	        javax.mail.Session mailSession = javax.mail.Session.getInstance(properties);
	       
	       try {
	       	
	           MimeMessage message = new MimeMessage(mailSession);
	  
	          
	           message.setContent("<h1>This is your new password "+user.getPassword()+". You can change your password once you sign in into your account using the given creditantials.</h1>","text/html" );
	           message.setSubject("Forgot your print-o-mania password?");
	           
	           InternetAddress sender = new InternetAddress(user.getEmailId(),"Mail");
	           InternetAddress receiver = new InternetAddress(user.getEmailId());
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
	@Override
	public String passgen(int MAX_LENGTH) {
		// TODO Auto-generated method stub

		Random r = new Random();
		 String DIGITS = "123456789";
		 String LOCASE_CHARACTERS = "abcdefghjkmnpqrstuvwxyz";
		 String UPCASE_CHARACTERS = "ABCDEFGHJKMNPQRSTUVWXYZ";
		 String SYMBOLS = "@#$%=:?";
		 String ALL = DIGITS + LOCASE_CHARACTERS + UPCASE_CHARACTERS + SYMBOLS;
		 char[] upcaseArray = UPCASE_CHARACTERS.toCharArray();
		 char[] locaseArray = LOCASE_CHARACTERS.toCharArray();
		 char[] digitsArray = DIGITS.toCharArray();
		 char[] symbolsArray = SYMBOLS.toCharArray();
		 char[] allArray = ALL.toCharArray();
		/**
		* Generate a random password based on security rules
		*
		* - at least 8 characters, max of 12
		* - at least one uppercase
		* - at least one lowercase
		* - at least one number
		* - at least one symbol
		*
		* @return
		*/
		StringBuilder sb = new StringBuilder();
		// get at least one lowercase letter
		sb.append(locaseArray[r.nextInt(locaseArray.length)]);
		// get at least one uppercase letter
		sb.append(upcaseArray[r.nextInt(upcaseArray.length)]);
		// get at least one digit
		sb.append(digitsArray[r.nextInt(digitsArray.length)]);
		// get at least one symbol
		sb.append(symbolsArray[r.nextInt(symbolsArray.length)]);
		// fill in remaining with random letters
		for (int i = 0; i < MAX_LENGTH - 4; i++) {
		sb.append(allArray[r.nextInt(allArray.length)]);
		}
		return sb.toString();
	}
	@Override
	public void contactUs(User user) {
		// TODO Auto-generated method stub
		userDao.contactUs(user);
	}
	@Override
	public void sendcontactusmail(User user) {
		// TODO Auto-generated method stub
		
		java.util.Properties properties = new java.util.Properties();
	       properties.put("mail.smtp.auth", "true");
	        properties.put("mail.smtp.starttls.enable", "true");
	        javax.mail.Session mailSession = javax.mail.Session.getInstance(properties);
	       
	       try {
	       	
	           MimeMessage message = new MimeMessage(mailSession);
	  
	          
	           message.setContent("This is the request from user: -"+user.getMessage()+".","text/html" );
	           message.setSubject("Query from "+user.getFname()+" with "+user.getEmailId()+" email address !");
	           
	           InternetAddress sender = new InternetAddress("contactus.printomania@gmail.com","Mail");
	           InternetAddress receiver = new InternetAddress("contactus.printomania@gmail.com");
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
	@Override
	public void addCardDetails(CardDetails cardDetails) {
		userDao.addCardDetails(cardDetails);
		
	}
	@Override
	public List getCardDetails(String userId) {
		List<CardDetails> cardDetails = userDao.getCardDetails(userId); 	
		return cardDetails;
	}
	@Override
	public List getUserCardDetails(String userId) {
		List<CardDetails> cardDetails = userDao.getUserCardDetails(userId); 	
		return cardDetails;
	}
}
