package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.controller.DBConn;
import com.model.CardDetails;
import com.model.User;

public class UserDaoImpl implements UserDao {
	private Connection conn;
	
	public UserDaoImpl(){
		conn= DBConn.getConnection();
	}
	
	public void addUser(User user){
		try{
			PreparedStatement preparedStmt= conn.prepareStatement("insert into print_o_mania.users(fname, lname, emailId, userId, password, role, gender, country, subscription,address) values (?,?,?,?,?,?,?,?,?,?);");
			preparedStmt.setString(1, user.getFname());
			preparedStmt.setString(2, user.getLname()); 
			preparedStmt.setString(3, user.getEmailId());
			preparedStmt.setString(4, user.getUserId());
			preparedStmt.setString(5, user.getPassword());
			preparedStmt.setString(6, user.getRole());
			preparedStmt.setString(7, user.getGender());
			preparedStmt.setString(8, user.getCountry());
			preparedStmt.setString(9, user.getSubscription());
			preparedStmt.setString(10, user.getAddress());

			preparedStmt.executeUpdate();
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
	public void delete(User user){
		try{
			PreparedStatement preparedStmt= conn.prepareStatement("delete from users where userId='"+user.getUserId()+"'");
			preparedStmt.executeUpdate();
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
	@Override
	public boolean checkUserIdExist(String userId) {

		PreparedStatement preparedStatement;
		try {
			preparedStatement = conn.prepareStatement("select * from users where userId='"+userId+"'");
		
			ResultSet rs= preparedStatement.executeQuery();
			while(rs.next()){
				return true;
			}
		}
		 catch (SQLException e) {
			e.printStackTrace();
		}
		
		return false;
	
	}
	public boolean authenticateUsers(String userId, String password){
		PreparedStatement preparedStatement;
		try {
			preparedStatement = conn.prepareStatement("select * from users where userId='"+userId+"' and password='"+password+"'");
		
			ResultSet rs= preparedStatement.executeQuery();
			while(rs.next()){
				return true;
			}
		}
		 catch (SQLException e) {
			e.printStackTrace();
		}
		
		return false;
	}

	public List<User> getUserNameById(String userId) {
		PreparedStatement preparedStatement;
		String userName= null;
		String role= null;
		List<User> user= new ArrayList<User>();

		try {
			preparedStatement = conn.prepareStatement("select * from users where userId='"+userId+"'");
		
			ResultSet rs= preparedStatement.executeQuery();
			while(rs.next()){
				userName = rs.getString("fname");
				role= rs.getString("role");
				User u = new User();
				u.setFname(rs.getString("fname"));
				u.setRole(rs.getString("role"));
				user.add(u);
			}
		}
		 catch (SQLException e) {
			e.printStackTrace();
		}
		
		return user;
	}
	   public void updateUser(User user) {
	        try {
	            PreparedStatement preparedStatement = conn.prepareStatement("update users set fname=?, lname=?, emailId=?,gender=?, country=?, subscription=?,address=? where userId=?");
	            preparedStatement.setString(1, user.getFname());
	            preparedStatement.setString(2, user.getLname());
	            preparedStatement.setString(3, user.getEmailId());
	            preparedStatement.setString(4, user.getGender());
	            preparedStatement.setString(5, user.getCountry());
	            preparedStatement.setString(6, user.getUserId());
	            preparedStatement.setString(7, user.getSubscription());
	            preparedStatement.setString(8, user.getAddress());

	            preparedStatement.executeUpdate();

	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }

	@Override
	public User getUserDetails(String userId) {
		PreparedStatement preparedStatement;
		User u = new User();
		try {
			preparedStatement = conn.prepareStatement("select * from users where userId='"+userId+"'");
			ResultSet rs= preparedStatement.executeQuery();
			while(rs.next()){
				u.setFname(rs.getString("fname"));
				u.setLname(rs.getString("lname"));
				u.setEmailId(rs.getString("emailId"));
				u.setGender(rs.getString("gender"));
				u.setCountry(rs.getString("country"));
				u.setPassword(rs.getString("password"));
				u.setAddress(rs.getString("address"));

			}
		}
		 catch (SQLException e) {
			e.printStackTrace();
		}		
		return u;
	}

	@Override
	public boolean checkEmailIdExist(String emailId) {
		PreparedStatement preparedStatement;
		System.out.println("Dao entered");
		try {
			preparedStatement = conn.prepareStatement("select * from users where emailId='"+emailId+"'");
		
			ResultSet rs= preparedStatement.executeQuery();
			
			while(rs.next()){
				System.out.println("dao check passed");
				return true;
			}
		}
		 catch (SQLException e) {
			e.printStackTrace();
		}
		
		return false;
	
	}

	@Override
	public void updatepassword(User user) {
		// TODO Auto-generated method stub
		try {
            PreparedStatement preparedStatement = conn.prepareStatement("update users set password=? where emailId=?");
            preparedStatement.setString(1, user.getPassword());
            preparedStatement.setString(2, user.getEmailId());
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
		
	}

	@Override
	public void contactUs(User user) {
		// TODO Auto-generated method stub
		try{
			PreparedStatement preparedStmt= conn.prepareStatement("insert into contactus(fname,emailId,message) values (?,?,?)");
			preparedStmt.setString(1, user.getFname());
			preparedStmt.setString(2, user.getEmailId());
			preparedStmt.setString(3, user.getMessage());
			preparedStmt.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}

		
	}

	@Override
	public void updateAddress(String address, String userId) {
		User user = new User();
		 try {
	            PreparedStatement preparedStatement = conn.prepareStatement("update users set address=? where userId=?");
	            preparedStatement.setString(1, address);
	            preparedStatement.setString(2, userId);
	            preparedStatement.executeUpdate();

	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
		
	}

	@Override
	public void addCardDetails(CardDetails cardDetails) {
		// TODO Auto-generated method stub
		try{
			PreparedStatement preparedStmt= conn.prepareStatement("insert into cardDetails(userId, cardNo, cardName, expirationDateMonth, expirationDateYear) values (?,?,?,?,?)");
			preparedStmt.setString(1, cardDetails.getUserId());
			preparedStmt.setString(2, cardDetails.getCardNo());
			preparedStmt.setString(3, cardDetails.getCardName());
			preparedStmt.setString(4, cardDetails.getExpirationDateMonth());
			preparedStmt.setString(5, cardDetails.getExpirationDateYear());

			preparedStmt.executeUpdate();
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}

	@Override
	public List<CardDetails> getCardDetails(String userId) {
		PreparedStatement preparedStatement;
		List<CardDetails> card = new ArrayList<CardDetails>();
		try {
			preparedStatement = conn.prepareStatement("select * from cardDetails where userId='"+userId+"'");
			ResultSet rs= preparedStatement.executeQuery();
			while(rs.next()){
				CardDetails c = new CardDetails();
				c.setCardName(rs.getString("cardName"));
				String cardNumber=rs.getString("cardNo");
				String cardNo = cardNumber.substring(cardNumber.length() - 4);
				c.setCardNo(cardNo);
				c.setExpirationDateMonth(rs.getString("expirationDateMonth"));
				c.setExpirationDateYear(rs.getString("expirationDateYear"));
				card.add(c);
			}
		}
		 catch (SQLException e) {
			e.printStackTrace();
		}		
		return card;
	}
	@Override
	public List<CardDetails> getUserCardDetails(String userId) {
		PreparedStatement preparedStatement;
		List<CardDetails> card = new ArrayList<CardDetails>();
		try {
			preparedStatement = conn.prepareStatement("select * from cardDetails where userId='"+userId+"'");
			ResultSet rs= preparedStatement.executeQuery();
			while(rs.next()){
				CardDetails c = new CardDetails();
				c.setCardName(rs.getString("cardName"));
				String cardNumber=rs.getString("cardNo");
				String cardNo = cardNumber.substring(cardNumber.length() - 4);
				c.setCardNo(cardNo);
				c.setExpirationDateMonth(rs.getString("expirationDateMonth"));
				c.setExpirationDateYear(rs.getString("expirationDateYear"));
				card.add(c);
			}
		}
		 catch (SQLException e) {
			e.printStackTrace();
		}		
		return card;
	}


}
