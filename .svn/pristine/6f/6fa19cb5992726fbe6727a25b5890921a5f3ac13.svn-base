package com.dao;
import java.sql.SQLException;
import java.util.List;

import com.model.Product;

public interface PageDao {

	public List<Product> getRecentProducts(String type) ;
	
	public List<Product> viewProduct(String id);

	public byte[] getImages(String imageId) throws SQLException ;
	
	public void addCartProduct(String userId, String productId, String quantity);

	public List<Product> getProducts();

	public List getEmail();

	public void addProducts(Product addingdata);
	
	public byte[] getMaskedImages(String imageId) throws SQLException;

	public List<Product> viewMaskedProduct(String productID);

	public byte[] getOrderImages(String imageId) throws SQLException;



}