package com.service;

import java.util.List;

import com.model.CardDetails;
import com.model.User;

public interface UserService {

	boolean checkUserIdExist(String userId);

	void addUser(User user);

	List<User> getUserNameById(String userId);

	boolean authenticateUsers(String userId, String password);

	User getUserDetails(String userId);

	void updateUser(User user);

	boolean checkEmailIdExist(String emailId);

	int createotp(int i);
	
	String passgen(int i);

	void updatepassword(User user);

	void sendpasswordmail(User user);

	void contactUs(User user);

	void sendcontactusmail(User user);

	void updateAddress(String address, String userId);

	void addCardDetails(CardDetails cardDetails);

	List<CardDetails> getCardDetails(String userId);
	List<CardDetails> getUserCardDetails(String userId);

}
