package com.coosi29.flatshop.service;

import java.util.List;

import com.coosi29.flatshop.model.ProductDTO;

public interface ProductService {

	void insert(ProductDTO productDTO);

	void update(ProductDTO productDTO);

	void delete(long productId);

	ProductDTO findById(long productId);

	List<ProductDTO> findAll(int pageIndex, int pageSize);

	List<ProductDTO> findAllByCategoryId(long categoryId, int pageIndex, int pagesize);
	
	int count();
	
	int countByCategoryId(long categoryId);
	
	List<ProductDTO> hotProducts(int pageIndex, int pageSize);
	
	List<ProductDTO> featuredProducts(int pageIndex, int pageSize);
	
	List<ProductDTO> search(long categoryId, String pricing, float priceFrom, float priceTo, String sort, String text, int pageIndex, int pageSize);

	int countBySearch(long categoryId, String pricing, float priceFrom, float priceTo, String text);
}
