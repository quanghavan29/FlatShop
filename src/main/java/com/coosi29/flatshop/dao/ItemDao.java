package com.coosi29.flatshop.dao;

import java.util.List;

import com.coosi29.flatshop.entity.Item;

public interface ItemDao {

	void insert(Item item);
	
	void update(Item item);
	
	void delete(long itemId);
	
	List<Item> findAll(int pageIndex, int pageSize);
	
	List<Item> findByOrderId(long orderId);
}
