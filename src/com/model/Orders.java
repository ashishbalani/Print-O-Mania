package com.model;

import java.io.Serializable;
import java.sql.Blob;
import java.util.Date;

public class Orders implements Serializable{
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
private String userId;
private String productId;
private String quantity;

private String purchaseDate;

public String getUserId() {
	return userId;
}
public void setUserId(String userId) {
	this.userId = userId;
}
public String getProductId() {
	return productId;
}
public void setProductId(String productId) {
	this.productId = productId;
}
public String getQuantity() {
	return quantity;
}
public void setQuantity(String quantity) {
	this.quantity = quantity;
}
public String getPurchaseDate() {
	return purchaseDate;
}
public void setPurchaseDate(String purchaseDate) {
	this.purchaseDate = purchaseDate;
}


}
