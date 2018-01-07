package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.controller.DBConn;
import com.model.Cart;
import com.model.Orders;
import com.model.Product;
import com.model.PurchasedProducts;
import com.model.ViewCart;
import com.model.ViewCartDTO;

public class CartDaoImpl implements CartDao {
	private Connection conn;

	public CartDaoImpl(){
		conn= DBConn.getConnection();
	}

	@Override
	public List getProduct(String userId) {/*		
		PreparedStatement preparedStatement;
	List im=new ArrayList();
	List<String> iml=new ArrayList();

	String pid, size,quantity;
//	private String =null;
	
	try
	{
			preparedStatement = conn.prepareStatement("SELECT * FROM cart WHERE userId='"+userId+"'");
			ResultSet rs= preparedStatement.executeQuery();
			int i=0;
		  while(rs.next())
		  {
			  pid=(rs.getString("pid"));
//			  size=String.valueOf(rs.getString("size"));
			  quantity=(rs.getString("quantity"));
			  iml.add(pid);
//			  im1.add(size);
			  iml.add(quantity);
		 
		  }
	}
	catch (Exception e) 
	{
		// TODO: handle exception
	}
	
	im=createTable(iml);
	return im;
*/

		/*PreparedStatement preparedStatement;
		List<ViewCartDTO> viewCartList=new ArrayList();
		String pid, quantity;
		try
		{
			System.out.println(".....in cart controller else if get view dao before while");
			preparedStatement = conn.prepareStatement("SELECT c.pid, c.quantity, pr.p_name, pr.p_type, pr.size, pr.price, pr.p_picture FROM cart c INNER JOIN products pr ON c.pid=pr.pid where userId='"+userId+"'");
				ResultSet rs= preparedStatement.executeQuery();
				int i=0;
			  while(rs.next())
			  {
				  System.out.println(".....in cart controller else if get view dao in while");
				  ViewCartDTO c = new ViewCartDTO();
				  c.setProductId(rs.getString("pid"));
				  c.setName(rs.getString("p_name"));
				  c.setPrice(rs.getInt("price"));
				  c.setQuantity(rs.getString("quantity"));
				  c.setSize(rs.getString("size"));
				  c.setType(rs.getString("p_type"));
			      c.setImage(rs.getBlob("p_picture"));
			      viewCartList.add(c);
			  }
		}
		catch (Exception e) 
		{
			// TODO: handle exception
		}
		
		return viewCartList;
		*/
		PreparedStatement preparedStatement;
		List<Cart> viewCartList=new ArrayList();
		String pid, quantity;
		try
		{
			preparedStatement = conn.prepareStatement("SELECT pid, userId, size, quantity, p_picture, price, name FROM custom_products where userId='"+userId+"'");
				ResultSet rs= preparedStatement.executeQuery();
				int i=0;
			  while(rs.next())
			  {
				  Cart c = new Cart();
				  c.setProductId(rs.getString("pid"));
				  c.setName(rs.getString("name"));
				  c.setPrice(rs.getInt("price"));
				  c.setQuantity(rs.getString("quantity"));
				  c.setSize(rs.getString("size"));
			      c.setImage(rs.getBlob("p_picture"));
			      System.out.println("in view cart DAO quantity"+rs.getString("quantity"));
			      viewCartList.add(c);
			  }
		}
		catch (Exception e) 
		{
			// TODO: handle exception
		}
		
		return viewCartList;
		
	}


	@Override
	public List createTable(List pid) {
		List im=new ArrayList();
	    PageDaoImpl pdi=new PageDaoImpl();
	    List<Product> l=new ArrayList<Product>();
		
		 for(int i=0;i<pid.size();i++)
		 {
			 try {
				String query="SELECT * FROM products WHERE pid='"+pid.get(i)+"'";
				PreparedStatement preparedStmt= conn.prepareStatement(query);
				ResultSet rs = preparedStmt.executeQuery();
				while(rs.next()){
					Product p=new Product();
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
		 }
	
		
		return l;
	}
	@Override
	public void delete(String userId, String productId) {
		try{
			PreparedStatement preparedStmt= conn.prepareStatement("delete from custom_products where userId='"+userId+"' and pid='"+productId+"'");
			preparedStmt.executeUpdate();
		}
		catch(Exception e){
			e.printStackTrace();
		}			
	}

	@Override
	public List getOrders(String userId) {/*
		PreparedStatement preparedStatement;
		List<PurchasedProducts> productsList=new ArrayList();
		try
		{
			preparedStatement = conn.prepareStatement("SELECT p.productId, p.purchaseDate, p.quantity, pr.p_name, pr.p_type, pr.size, pr.price, pr.p_picture FROM purchasedproducts p INNER JOIN products pr ON p.productId=pr.pid where userId='"+userId+"' order by p.purchaseDate Desc");
				ResultSet rs= preparedStatement.executeQuery();
			  while(rs.next())
			  {
				  PurchasedProducts pp = new PurchasedProducts();
				  pp.setProductId(rs.getString("productId"));
				  pp.setName(rs.getString("p_name"));
				  pp.setPrice(rs.getInt("price"));
				  pp.setQuantity(rs.getString("quantity"));
				  pp.setSize(rs.getString("size"));
				  pp.setType(rs.getString("p_type"));
			      pp.setImage(rs.getBlob("p_picture"));
			      pp.setPurchaseDate(rs.getString("purchaseDate"));
				  productsList.add(pp);
			  }
		}
		catch (Exception e) 
		{
			// TODO: handle exception
		}
		
		return productsList;
	*/

		PreparedStatement preparedStatement;
		List<PurchasedProducts> productsList=new ArrayList();
		try
		{
			preparedStatement = conn.prepareStatement("SELECT productId, purchaseDate, quantity, name, size, price, p_picture, orderStatus FROM purchasedproducts where userId='"+userId+"' order by purchaseDate Desc");
				ResultSet rs= preparedStatement.executeQuery();
			  while(rs.next())
			  {
				  PurchasedProducts pp = new PurchasedProducts();
				  pp.setProductId(rs.getString("productId"));
				  pp.setName(rs.getString("name"));
				  pp.setPrice(rs.getInt("price"));
				  pp.setQuantity(rs.getString("quantity"));
				  pp.setSize(rs.getString("size"));
			      pp.setImage(rs.getBlob("p_picture"));
			      pp.setPurchaseDate(rs.getString("purchaseDate"));
			      pp.setOrderStatus(rs.getString("orderStatus"));
				  productsList.add(pp);
			  }
		}
		catch (Exception e) 
		{
			// TODO: handle exception
		}
		
		return productsList;
	}

	@Override
	public void addOrder(List<Cart> viewCart, String userId, String purchaseDate) {
		 for(Cart v: viewCart)
		 {
		try{
			PreparedStatement preparedStmt= conn.prepareStatement("insert into purchasedproducts(userId, productId, quantity, purchaseDate, price, name, size, p_picture, orderStatus) values (?,?,?,?,?,?,?,?,?)");
			preparedStmt.setString(1, userId);
			preparedStmt.setString(2, v.getProductId()); 
			preparedStmt.setString(3, v.getQuantity());
			preparedStmt.setString(4, purchaseDate);
			preparedStmt.setInt(5, v.getPrice());
			preparedStmt.setString(6, v.getName());
			preparedStmt.setString(7, v.getSize());
			preparedStmt.setBlob(8, v.getImage());
			preparedStmt.setString(9, "Ordered");
			preparedStmt.executeUpdate();
		}
		catch(Exception e){
			e.printStackTrace();
		}	
		 }
	}

	@Override
	public List<Cart> getViewCartProducts(String userId) {
		PreparedStatement preparedStatement;
		List<Cart> viewCartList=new ArrayList();
		String pid, quantity;
		try
		{
			preparedStatement = conn.prepareStatement("SELECT * FROM cart where userId='"+userId+"'");
				ResultSet rs= preparedStatement.executeQuery();
				int i=0;
			  while(rs.next())
			  {
				  Cart c = new Cart();
				  c.setUserId(rs.getString("userId"));
				  c.setProductId(rs.getString("pid"));
				  c.setQuantity(rs.getString("quantity"));
			      viewCartList.add(c);
			  }
		}
		catch (Exception e) 
		{
			// TODO: handle exception
		}
		
		return viewCartList;
	}
	
	public Integer addQuantity(List<Cart> list) {
		int sum=0;
		 String quantity;
		 for(Cart v : list){
			 quantity= v.getQuantity();
			sum=sum + Integer.parseInt(quantity);
		}
		return sum;
	}

	@Override
	public Integer calculatePrice(List<Cart> list) {
		int sum=0;
		int price,quantity,total = 0;
		 for(Cart v : list){
			 price= v.getPrice();
			 quantity=Integer.parseInt(v.getQuantity());
			 total = total +(price*quantity);
		}
		return total;
	}

	@Override
	public void deleteViewCart(String userId) {
		try{
			PreparedStatement preparedStmt= conn.prepareStatement("delete from custom_products where userId='"+userId+"'");
			preparedStmt.executeUpdate();
		}
		catch(Exception e){
			e.printStackTrace();
		}		
	}

	@Override
	public List getAdminOrders(String userId) {
		PreparedStatement preparedStatement;
		List<PurchasedProducts> productsList=new ArrayList();
		try
		{
			preparedStatement = conn.prepareStatement("SELECT * FROM purchasedproducts order by purchaseDate Desc");
				ResultSet rs= preparedStatement.executeQuery();
			  while(rs.next())
			  {
				  PurchasedProducts pp = new PurchasedProducts();
				  pp.setProductId(rs.getString("productId"));
				  pp.setName(rs.getString("name"));
				  pp.setPrice(rs.getInt("price"));
				  pp.setQuantity(rs.getString("quantity"));
				  pp.setSize(rs.getString("size"));
			      pp.setImage(rs.getBlob("p_picture"));
			      pp.setPurchaseDate(rs.getString("purchaseDate"));
			      pp.setUserId(rs.getString("userId"));
			      pp.setOrderStatus(rs.getString("orderStatus"));
				  productsList.add(pp);
			  }
		}
		catch (Exception e) 
		{
			// TODO: handle exception
		}
		
		return productsList;
	}
	@Override
	public void saveUserProduct(Cart cart, int imageSize) {
		
		// TODO Auto-generated method stub
		try {
			PreparedStatement preparedStmt= conn.prepareStatement("insert into custom_products(pid, quantity, p_picture, size, userId, name, price) values (?,?,?,?,?,?,?)");
				preparedStmt.setString(1, cart.getProductId());
				preparedStmt.setString(2, cart.getQuantity());
				if(cart.getIs()!=null)
					preparedStmt.setBinaryStream(3,cart.getIs(),imageSize);
				preparedStmt.setString(4, cart.getSize());
				preparedStmt.setString(5, cart.getUserId());
				preparedStmt.setString(6, cart.getName());
				preparedStmt.setInt(7, cart.getPrice());

				preparedStmt.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
	}

}
