package com.coosi29.flatshop.dao;

import java.util.List;

import com.coosi29.flatshop.entity.Product;

public interface ProductDao {

	void insert(Product product);
	
	void update(Product product);
	
	void delete(long productId);
	
	Product findById(long productId);
	
	List<Product> findAll(int pageIndex, int pageSize);
	
	List<Product> findAllByCategoryId(long categoryId, int pageIndex, int pageSize);
	
	int count();
	
	int countByCategoryId(long categoryId);
	
	List<Product> hotProducts(int pageIndex, int pageSize);
	
	List<Product> featuredProducts(int pageIndex, int pageSize);
	
	List<Product> search(long categoryId, String pricing, float priceFrom, float priceTo, String sort, String text, int pageIndex, int pageSize);
	
	int countBySearch(long categoryId, String pricing, float priceFrom, float priceTo, String text);
}
