package com.dao;

import java.util.List;

import com.model.CardDetails;
import com.model.User;

public interface UserDao {

	void addUser(User user);

	boolean checkUserIdExist(String userId);

	public boolean authenticateUsers(String userId, String password);
	public List<User> getUserNameById(String userId);

	void delete(User usr);

	User getUserDetails(String userId);

	void updateUser(User user);

	boolean checkEmailIdExist(String emailId);

	void updatepassword(User user);

	void contactUs(User user);

	void updateAddress(String address, String userId);

	void addCardDetails(CardDetails cardDetails);

	List<CardDetails> getCardDetails(String userId);
	List<CardDetails> getUserCardDetails(String userId);


}
