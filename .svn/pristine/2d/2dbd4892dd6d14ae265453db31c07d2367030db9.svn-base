package com.dao;

import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.controller.DBConn;
import com.model.Product;

public class PageDaoImpl implements PageDao {

		private Connection conn;
		
		public PageDaoImpl(){
			conn= DBConn.getConnection();
		}
		public List<Product> getRecentProducts(String type){
			List<Product> l=new ArrayList<Product>();
			
			try {
			String query="SELECT * FROM products WHERE p_type='"+type+"'";
			PreparedStatement preparedStmt= conn.prepareStatement(query);
			ResultSet rs = preparedStmt.executeQuery();
			while(rs.next()){
				Product p=new Product();
			//	System.out.print(""+rs.getString("pid"));
				p.setId(rs.getString("pid"));
				p.setName(rs.getString("p_name"));
				p.setCreatedDate(rs.getDate("create_date"));
				p.setPrice(rs.getInt("price"));
				p.setQuantity(rs.getString("quantity"));
				p.setSize(rs.getString("size"));
				p.setType(rs.getString("p_type"));
				p.setImage(rs.getBlob("p_picture"));
				l.add(p);
			}} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return l;
			
		}
		public List<Product> viewProduct(String id){
			List<Product> l=new ArrayList<Product>();
			
			try {
			String query="SELECT * FROM products WHERE pid='"+id+"'";
			PreparedStatement preparedStmt= conn.prepareStatement(query);
			ResultSet rs = preparedStmt.executeQuery();
			while(rs.next()){
				Product p=new Product();
			//	System.out.print(""+rs.getString("pid"));
				p.setId(rs.getString("pid"));
				p.setName(rs.getString("p_name"));
				p.setCreatedDate(rs.getDate("create_date"));
				p.setPrice(rs.getInt("price"));
				p.setQuantity(rs.getString("quantity"));
				p.setSize(rs.getString("size"));
				p.setType(rs.getString("p_type"));
				p.setImage(rs.getBlob("p_picture"));
				l.add(p);
			}} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return l;
			
		}
		
		public byte[] getImages(String imageId) throws SQLException {

			   PreparedStatement preparedStatement = conn.prepareStatement("SELECT p_picture FROM `products` WHERE pid='"+imageId+"'");
				ResultSet rs= preparedStatement.executeQuery();

			   byte[] blobAsBytes=new byte[500];
			   while(rs.next()){
			   	Blob blob=rs.getBlob("p_picture");
			   	blobAsBytes=blob.getBytes(1,(int) blob.length());
			   }
			return blobAsBytes;
	}
		public byte[] getMaskedImages(String imageId) throws SQLException {

			   PreparedStatement preparedStatement = conn.prepareStatement("SELECT p_picture FROM `custom_products` WHERE pid='"+imageId+"'");
				ResultSet rs= preparedStatement.executeQuery();

			   byte[] blobAsBytes=new byte[500];
			   while(rs.next()){
			   	Blob blob=rs.getBlob("p_picture");
			   	blobAsBytes=blob.getBytes(1,(int) blob.length());
			   }
			return blobAsBytes;
	}
		
		public void addCartProduct(String userId, String productId, String quantity) {
			try {
			PreparedStatement preparedStmt= conn.prepareStatement("insert into cart(pid, userId, quantity) values (?,?,?)");
				preparedStmt.setString(1, productId);
				preparedStmt.setString(2, userId);
				preparedStmt.setString(3, quantity);

				preparedStmt.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		@Override
		public List<Product> getProducts() {
List<Product> l=new ArrayList<Product>();
			
			try {
			String query="SELECT * FROM products";
			PreparedStatement preparedStmt= conn.prepareStatement(query);
			ResultSet rs = preparedStmt.executeQuery();
			while(rs.next()){
				Product p=new Product();
			//	System.out.print(""+rs.getString("pid"));
				p.setId(rs.getString("pid"));
				p.setName(rs.getString("p_name"));
				p.setCreatedDate(rs.getDate("create_date"));
				p.setPrice(rs.getInt("price"));
				p.setQuantity(rs.getString("quantity"));
				p.setSize(rs.getString("size"));
				p.setType(rs.getString("p_type"));
				p.setImage(rs.getBlob("p_picture"));
				l.add(p);
			}} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return l;
		}
		@Override
		public List getEmail() {
			List sendingmail= new ArrayList();
			try {
			String query="SELECT emailId FROM users WHERE Subscribe = 1 and role!='"+"admin"+"'";
			PreparedStatement preparedStmt= conn.prepareStatement(query);
			ResultSet rs = preparedStmt.executeQuery();
			while(rs.next()){
				sendingmail.add(rs.getString("emailId"));
			}
			
			}
			catch (SQLException e) {
				
				e.printStackTrace();
			}
			System.out.print("email address toatal" + sendingmail.size());
			return sendingmail;
		}
		@Override
		public void addProducts(Product addingdata) {
			// TODO Auto-generated method stub
			try {
				System.out.println(addingdata.getFile().available());
				System.out.print("in dao");
				PreparedStatement preparedStmt= conn.prepareStatement("insert into products(pid, p_name, p_type, quantity, size, p_picture,create_date,price) values (?,?,?,?,?,?,?,?)");
					preparedStmt.setString(1, addingdata.getId());
					preparedStmt.setString(2, addingdata.getName());
					preparedStmt.setString(3, addingdata.getType());
					preparedStmt.setString(4, addingdata.getQuantity());
					preparedStmt.setString(5, addingdata.getSize());
					preparedStmt.setBlob(6, addingdata.getFile());
					preparedStmt.setDate(7, addingdata.getCreatedDate());
					preparedStmt.setInt(8, addingdata.getPrice());
					preparedStmt.executeUpdate();
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			
		}
		@Override
		public List<Product> viewMaskedProduct(String productID) {
List<Product> l=new ArrayList<Product>();
			
			try {
			String query="SELECT * FROM custom_products WHERE pid='"+productID+"'";
			PreparedStatement preparedStmt= conn.prepareStatement(query);
			ResultSet rs = preparedStmt.executeQuery();
			while(rs.next()){
				Product p=new Product();
			//	System.out.print(""+rs.getString("pid"));
				p.setId(rs.getString("pid"));
				p.setName(rs.getString("name"));
				p.setPrice(rs.getInt("price"));
				p.setQuantity(rs.getString("quantity"));
				p.setSize(rs.getString("size"));
				p.setImage(rs.getBlob("p_picture"));
				System.out.println("view dao quantity"+rs.getString("quantity"));
				l.add(p);
			}} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return l;
			
		}
		@Override
		public byte[] getOrderImages(String imageId) throws SQLException {
			PreparedStatement preparedStatement = conn.prepareStatement("SELECT p_picture FROM `purchasedproducts` WHERE productId='"+imageId+"'");
			ResultSet rs= preparedStatement.executeQuery();

		   byte[] blobAsBytes=new byte[500];
		   while(rs.next()){
		   	Blob blob=rs.getBlob("p_picture");
		   	blobAsBytes=blob.getBytes(1,(int) blob.length());
		   }
		return blobAsBytes;
		}
		

}