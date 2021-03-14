package com.coosi29.flatshop.service;

import java.util.List;

import com.coosi29.flatshop.model.CategoryDTO;

public interface CategoryService {
	
	List<CategoryDTO> findAll();
	
}
