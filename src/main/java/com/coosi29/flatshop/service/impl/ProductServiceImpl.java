package com.coosi29.flatshop.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coosi29.flatshop.dao.ProductDao;
import com.coosi29.flatshop.entity.Category;
import com.coosi29.flatshop.entity.Product;
import com.coosi29.flatshop.entity.Sale;
import com.coosi29.flatshop.model.CategoryDTO;
import com.coosi29.flatshop.model.ProductDTO;
import com.coosi29.flatshop.model.SaleDTO;
import com.coosi29.flatshop.service.ProductService;

@Service
@Transactional
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDao productDao;
	
	@Override
	public void insert(ProductDTO productDTO) {
		Product product = new Product();
		Category category = new Category();
		category.setCategoryId(productDTO.getCategoryDTO().getCategoryId());
		Sale sale = new Sale();
		sale.setSaleId(productDTO.getSaleDTO().getSaleId());
		product.setProductId(productDTO.getProductId());
		product.setProductName(productDTO.getProductName());
		product.setImage(productDTO.getImage());
		product.setDescription(productDTO.getDescription());
		product.setPrice(productDTO.getPrice());
		product.setQuantity(productDTO.getQuantity());
		product.setSale(sale);
		product.setCategory(category);
		
		productDao.insert(product);
	}

	@Override
	public void update(ProductDTO productDTO) {
		Product product = new Product();
		Category category = new Category();
		category.setCategoryId(productDTO.getCategoryDTO().getCategoryId());
		Sale sale = new Sale();
		sale.setSaleId(productDTO.getSaleDTO().getSaleId());
		product.setProductId(productDTO.getProductId());
		product.setProductName(productDTO.getProductName());
		product.setImage(productDTO.getImage());
		product.setDescription(productDTO.getDescription());
		product.setPrice(productDTO.getPrice());
		product.setQuantity(productDTO.getQuantity());
		product.setSale(sale);
		product.setCategory(category);
		
		productDao.update(product);
	}

	@Override
	public void delete(long productId) {
		// TODO Auto-generated method stub
		productDao.delete(productId);
	}

	@Override
	public ProductDTO findById(long productId) {
		Product product = productDao.findById(productId);
		SaleDTO saleDTO = new SaleDTO();
		
		saleDTO.setSaleId(product.getSale().getSaleId());
		saleDTO.setSalePercent(product.getSale().getSalePercent());
		
		CategoryDTO categoryDTO = new CategoryDTO();
		
		categoryDTO.setCategoryId(product.getCategory().getCategoryId());
		categoryDTO.setCategoryName(product.getCategory().getCategoryName());
		
		ProductDTO productDTO = new ProductDTO();
		
		productDTO.setProductId(product.getProductId());
		productDTO.setProductName(product.getProductName());
		productDTO.setImage(product.getImage());
		productDTO.setDescription(product.getDescription());
		productDTO.setPrice(product.getPrice());
		productDTO.setQuantity(product.getQuantity());
		productDTO.setSaleDTO(saleDTO);
		productDTO.setCategoryDTO(categoryDTO);
		
		return productDTO;
	}

	@Override
	public List<ProductDTO> findAll(int pageIndex, int pageSize) {
		List<Product> products = productDao.findAll(pageIndex, pageSize);
		List<ProductDTO> productDTOs = new ArrayList<>();
		for (Product product : products) {
			SaleDTO saleDTO = new SaleDTO();
			
			saleDTO.setSaleId(product.getSale().getSaleId());
			saleDTO.setSalePercent(product.getSale().getSalePercent());
			
			CategoryDTO categoryDTO = new CategoryDTO();
			
			categoryDTO.setCategoryId(product.getCategory().getCategoryId());
			categoryDTO.setCategoryName(product.getCategory().getCategoryName());
			
			ProductDTO productDTO = new ProductDTO();
			
			productDTO.setProductId(product.getProductId());
			productDTO.setProductName(product.getProductName());
			productDTO.setImage(product.getImage());
			productDTO.setDescription(product.getDescription());
			productDTO.setPrice(product.getPrice());
			productDTO.setQuantity(product.getQuantity());
			productDTO.setSaleDTO(saleDTO);
			productDTO.setCategoryDTO(categoryDTO);
			
			productDTOs.add(productDTO);
			
		}
		return productDTOs;
	}

	@Override
	public List<ProductDTO> findAllByCategoryId(long categoryId, int pageIndex, int pageSize) {
		List<Product> products = productDao.findAllByCategoryId(categoryId, pageIndex, pageSize);
		List<ProductDTO> productDTOs = new ArrayList<>();
		for (Product product : products) {
			SaleDTO saleDTO = new SaleDTO();
			
			saleDTO.setSaleId(product.getSale().getSaleId());
			saleDTO.setSalePercent(product.getSale().getSalePercent());
			
			CategoryDTO categoryDTO = new CategoryDTO();
			
			categoryDTO.setCategoryId(product.getCategory().getCategoryId());
			categoryDTO.setCategoryName(product.getCategory().getCategoryName());
			
			ProductDTO productDTO = new ProductDTO();
			
			productDTO.setProductId(product.getProductId());
			productDTO.setProductName(product.getProductName());
			productDTO.setImage(product.getImage());
			productDTO.setDescription(product.getDescription());
			productDTO.setPrice(product.getPrice());
			productDTO.setQuantity(product.getQuantity());
			productDTO.setSaleDTO(saleDTO);
			productDTO.setCategoryDTO(categoryDTO);
			
			productDTOs.add(productDTO);
			
		}
		return productDTOs;
	}

	@Override
	public int count() {
		return productDao.count();
	}

	@Override
	public int countByCategoryId(long categoryId) {
		return productDao.countByCategoryId(categoryId);
	}

	@Override
	public List<ProductDTO> hotProducts(int pageIndex, int pageSize) {
		List<Product> products = productDao.hotProducts(pageIndex, pageSize);
		List<ProductDTO> productDTOs = new ArrayList<>();
		for (Product product : products) {
			SaleDTO saleDTO = new SaleDTO();
			
			saleDTO.setSaleId(product.getSale().getSaleId());
			saleDTO.setSalePercent(product.getSale().getSalePercent());
			
			CategoryDTO categoryDTO = new CategoryDTO();
			
			categoryDTO.setCategoryId(product.getCategory().getCategoryId());
			categoryDTO.setCategoryName(product.getCategory().getCategoryName());
			
			ProductDTO productDTO = new ProductDTO();
			
			productDTO.setProductId(product.getProductId());
			productDTO.setProductName(product.getProductName());
			productDTO.setImage(product.getImage());
			productDTO.setDescription(product.getDescription());
			productDTO.setPrice(product.getPrice());
			productDTO.setQuantity(product.getQuantity());
			productDTO.setSaleDTO(saleDTO);
			productDTO.setCategoryDTO(categoryDTO);
			
			productDTOs.add(productDTO);
			
		}
		return productDTOs;
	}

	@Override
	public List<ProductDTO> featuredProducts(int pageIndex, int pageSize) {
		List<Product> products = productDao.featuredProducts(pageIndex, pageSize);
		List<ProductDTO> productDTOs = new ArrayList<>();
		for (Product product : products) {
			SaleDTO saleDTO = new SaleDTO();
			
			saleDTO.setSaleId(product.getSale().getSaleId());
			saleDTO.setSalePercent(product.getSale().getSalePercent());
			
			CategoryDTO categoryDTO = new CategoryDTO();
			
			categoryDTO.setCategoryId(product.getCategory().getCategoryId());
			categoryDTO.setCategoryName(product.getCategory().getCategoryName());
			
			ProductDTO productDTO = new ProductDTO();
			
			productDTO.setProductId(product.getProductId());
			productDTO.setProductName(product.getProductName());
			productDTO.setImage(product.getImage());
			productDTO.setDescription(product.getDescription());
			productDTO.setPrice(product.getPrice());
			productDTO.setQuantity(product.getQuantity());
			productDTO.setSaleDTO(saleDTO);
			productDTO.setCategoryDTO(categoryDTO);
			
			productDTOs.add(productDTO);
			
		}
		return productDTOs;
	}

	@Override
	public List<ProductDTO> search(long categoryId, String pricing, float priceFrom, float priceTo, String sort,
			String text, int pageIndex, int pageSize) {
		List<Product> products = productDao.search(categoryId, pricing, priceFrom, priceTo, sort, text, pageIndex, pageSize);
		List<ProductDTO> productDTOs = new ArrayList<>();
		for (Product product : products) {
			SaleDTO saleDTO = new SaleDTO();
			
			saleDTO.setSaleId(product.getSale().getSaleId());
			saleDTO.setSalePercent(product.getSale().getSalePercent());
			
			CategoryDTO categoryDTO = new CategoryDTO();
			
			categoryDTO.setCategoryId(product.getCategory().getCategoryId());
			categoryDTO.setCategoryName(product.getCategory().getCategoryName());
			
			ProductDTO productDTO = new ProductDTO();
			
			productDTO.setProductId(product.getProductId());
			productDTO.setProductName(product.getProductName());
			productDTO.setImage(product.getImage());
			productDTO.setDescription(product.getDescription());
			productDTO.setPrice(product.getPrice());
			productDTO.setQuantity(product.getQuantity());
			productDTO.setSaleDTO(saleDTO);
			productDTO.setCategoryDTO(categoryDTO);
			
			productDTOs.add(productDTO);
			
		}
		return productDTOs;
	}

	@Override
	public int countBySearch(long categoryId, String pricing, float priceFrom, float priceTo, String text) {
		return productDao.countBySearch(categoryId, pricing, priceFrom, priceTo, text);
	}

}
