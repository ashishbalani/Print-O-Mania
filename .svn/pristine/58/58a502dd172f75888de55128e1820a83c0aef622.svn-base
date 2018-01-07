package com.service;

import java.sql.SQLException;
import java.util.List;

import com.model.Product;

public interface PageService {

	public List<Product> getRecentProducts(String type);

	public byte[] getImages(String imageId) throws SQLException ;

	public List<Product> viewProduct(String productID);

	public void addCartProduct(String userId, String productId, String quantity);

	public void addProducts(Product addingdata);

	public byte[] getMaskedImages(String imageId) throws SQLException;

	public List<Product> viewMaskedProduct(String productID);

	public byte[] getOrderImages(String imageId) throws SQLException;
     

}