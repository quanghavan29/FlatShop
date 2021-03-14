package com.coosi29.flatshop.dao;

import java.util.List;

import com.coosi29.flatshop.entity.User;

public interface UserDao {

	void insert(User user);
	
	void update(User user);
	
	void delete(long userId);
	
	User findById(long userId);
	
	List<User> findAll(int pageIndex, int pageSize);

	User findByEmailOrPhoneAndPassword(String account, String password, boolean verity);

	User loadUserByUsername(String account);
	
	User findByEmail(String email);
	
	int count();
}
