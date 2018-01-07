package com.dao;

import java.util.List;

import com.model.Cart;
import com.model.Orders;
import com.model.ViewCart;
import com.model.ViewCartDTO;

public interface CartDao {
	public List getProduct(String user);
	public List createTable(List pid);
	public void delete(String userId, String productId);
	public List getOrders(String userId);
	public void addOrder(List<Cart> viewCart,String userId,  String purchaseDate);
	public List<Cart> getViewCartProducts(String userId);
	public Integer addQuantity(List<Cart> list);
	public Integer calculatePrice(List<Cart> list);
	public void deleteViewCart(String userId);
	public List getAdminOrders(String userId);
	public void saveUserProduct(Cart cart,int imageSize);

}
