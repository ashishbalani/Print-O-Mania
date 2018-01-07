package com.service;

import java.sql.SQLException;
import java.util.List;

import com.model.Product;
import com.model.PurchasedProducts;

public interface AdminService {

	public List<Product> getProducts();

	public List getEmailAddress();

	public void sendEmailSubscribsion(List sendingmail, String link);
	
	public void deleteProduct(String id);

	public void updateOrder(PurchasedProducts purchasedProducts);

	public void updateProducts(String productId, String quantity, String productQuantity);

	public String getProduct(String productId);
}
