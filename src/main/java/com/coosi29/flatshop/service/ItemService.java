package com.coosi29.flatshop.service;

import java.util.List;

import com.coosi29.flatshop.model.ItemDTO;

public interface ItemService {

	void insert(ItemDTO itemDTO);
	
	void update(ItemDTO itemDTO);
	
	void delete(long itemId);
	
	List<ItemDTO> findAll(int pageIndex, int pageSize);
	
	List<ItemDTO> findByOrderId(long orderId);
	
}
