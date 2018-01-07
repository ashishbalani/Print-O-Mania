package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.controller.DBConn;
import com.model.PurchasedProducts;
import com.model.User;
import com.mysql.jdbc.Statement;

public class AdminUserDaoImpl implements AdminUserDao {
	Connection conn;
	public AdminUserDaoImpl()
	{
		conn= DBConn.getConnection();
	}
	
	public List viewuserdata() {
		List ls= new ArrayList();
		PreparedStatement preparedStatement;
		try {
			preparedStatement = conn.prepareStatement("select * from users where role = 'customer' ");
		
			ResultSet rs= preparedStatement.executeQuery();
			while(rs.next()){
				User data= new User();
				data.setEmailId(rs.getString("emailId"));
				data.setFname(rs.getString("fname"));
				data.setLname(rs.getString("lname"));
				data.setUserId(rs.getString("userId"));
				data.setGender(rs.getString("gender"));
				ls.add(data);
			}
		}
		 catch (SQLException e) {
			e.printStackTrace();
		}
		return ls;
	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		try{
			Statement s=(Statement) conn.createStatement();
			s.executeUpdate("delete from products where pid='"+id+"'");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

	@Override
	public void updateOrder(PurchasedProducts purchasedProducts) {
		// TODO Auto-generated method stub
		try{
			Statement s=(Statement) conn.createStatement();
			s.executeUpdate("Update purchasedProducts set orderStatus = '"+purchasedProducts.getOrderStatus()+"' where productId='"+purchasedProducts.getProductId()+"'");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

	@Override
	public String getProduct(String productId) {
		String productQuantity = null;
		PreparedStatement preparedStatement;
		try {
			preparedStatement = conn.prepareStatement("select quantity from products where pid = '"+productId+"'");
			System.out.println();
			ResultSet rs= preparedStatement.executeQuery();
			while(rs.next()){
			productQuantity=rs.getString("quantity");
			}
		}
		 catch (SQLException e) {
			e.printStackTrace();
		}
		return productQuantity;
	}		
	
	@Override
	public void updateProducts(String productId, String quantity) {
//		String productQuantity = null;
		PreparedStatement preparedStatement;
		try {
			preparedStatement = conn.prepareStatement("update products set quantity=? where pid=?");
				 preparedStatement.setString(1, quantity);
		            preparedStatement.setString(2, productId);
		            preparedStatement.executeUpdate();
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
