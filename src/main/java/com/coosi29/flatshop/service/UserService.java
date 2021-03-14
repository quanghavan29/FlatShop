package com.coosi29.flatshop.service;

import java.util.List;

import com.coosi29.flatshop.model.UserDTO;


public interface UserService {

	void insert(UserDTO userDTO);
	
	void update(UserDTO userDTO);
	
	void delete(long userId);
	
	UserDTO findById(long userId);
	
	List<UserDTO> findAll(int pageIndex, int PageSize);

	UserDTO findByEmailOrPhoneAndPassword(String account, String password, boolean verity);
	
	UserDTO findByEmail(String email);
	
	int count();
	
}
