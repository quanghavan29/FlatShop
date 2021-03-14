package com.coosi29.flatshop.model;

import java.util.List;

public class SaleDTO {

	private String saleId;
	private int salePercent;
	private List<ProductDTO> productDTOs;
	
	public SaleDTO() {
		// TODO Auto-generated constructor stub
	}

	public SaleDTO(String saleId, int salePercent, List<ProductDTO> productDTOs) {
		super();
		this.saleId = saleId;
		this.salePercent = salePercent;
		this.productDTOs = productDTOs;
	}

	public String getSaleId() {
		return saleId;
	}

	public void setSaleId(String saleId) {
		this.saleId = saleId;
	}

	public int getSalePercent() {
		return salePercent;
	}

	public void setSalePercent(int salePercent) {
		this.salePercent = salePercent;
	}

	public List<ProductDTO> getProductDTOs() {
		return productDTOs;
	}

	public void setProductDTOs(List<ProductDTO> productDTOs) {
		this.productDTOs = productDTOs;
	}
	
	

}
