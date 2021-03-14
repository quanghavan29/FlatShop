package com.coosi29.flatshop.dao;

import java.util.List;

import com.coosi29.flatshop.entity.Order;

public interface OrderDao {

	void insert(Order order);
	
	void update(Order order);
	
	void delete(long orderId);
	
	List<Order> findAll(int pageIndex, int pageSize);
	
	List<Order> findByBuyer(long userId);
	
	int count();
	
	Order findById(long orderId);
	
}
