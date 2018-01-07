package com.service;

import java.sql.SQLException;
import java.util.List;

import com.dao.PageDao;
import com.dao.PageDaoImpl;
import com.model.Product;

public class PageServiceImpl implements PageService {
	PageDao pageDao =new PageDaoImpl();
	@Override
	public List<Product> getRecentProducts(String type)  {
		List<Product> poducts=pageDao.getRecentProducts(type);
		return poducts;
	}
	
	@Override
	public byte[] getImages(String imageId) throws SQLException {
		byte[] blobAsBytes = pageDao.getImages(imageId);
		return blobAsBytes;

	}
	@Override
	public byte[] getMaskedImages(String imageId) throws SQLException {
		byte[] blobAsBytes = pageDao.getMaskedImages(imageId);
		return blobAsBytes;

	}
	@Override
	public List<Product> viewProduct(String productID){
		List<Product> product=pageDao.viewProduct(productID);
		return product;
		
	}
	
	@Override
	public void addCartProduct(String userId, String productId, String quantity){
		pageDao.addCartProduct(userId,productId, quantity);
	}

	@Override
	public void addProducts(Product addingdata) {
		// TODO Auto-generated method stub
		pageDao.addProducts(addingdata);
		
	}

	@Override
	public List<Product> viewMaskedProduct(String productID) {
		List<Product> product=pageDao.viewMaskedProduct(productID);
		return product;
	}

	@Override
	public byte[] getOrderImages(String imageId) throws SQLException {
		byte[] blobAsBytes = pageDao.getOrderImages(imageId);
		return blobAsBytes;
	}

	
}