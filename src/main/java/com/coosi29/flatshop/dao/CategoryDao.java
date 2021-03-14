package com.coosi29.flatshop.dao;

import java.util.List;

import com.coosi29.flatshop.entity.Category;

public interface CategoryDao {

	List<Category> findAll();
}
