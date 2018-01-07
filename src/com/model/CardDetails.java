package com.model;

import java.io.Serializable;

public class CardDetails implements Serializable{
	private String userId;
	private String cardNo;
	private String cardName;
	private String expirationDateMonth;
	private String expirationDateYear;
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getCardNo() {
		return cardNo;
	}
	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}
	public String getCardName() {
		return cardName;
	}
	public void setCardName(String cardName) {
		this.cardName = cardName;
	}
	
	public String getExpirationDateMonth() {
		return expirationDateMonth;
	}
	public void setExpirationDateMonth(String expirationDateMonth) {
		this.expirationDateMonth = expirationDateMonth;
	}
	public String getExpirationDateYear() {
		return expirationDateYear;
	}
	public void setExpirationDateYear(String expirationDateYear) {
		this.expirationDateYear = expirationDateYear;
	}
	
	
}
