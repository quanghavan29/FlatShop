package com.coosi29.flatshop.model;

public class BillProductDTO {

	private long id;
	private float unitPrice;
	private int quantity;
	private ProductDTO productDTO;
	private BillDTO billDTO;

	public BillProductDTO() {
		// TODO Auto-generated constructor stub
	}

	public BillProductDTO(long id, float unitPrice, int quantity, ProductDTO productDTO, BillDTO billDTO) {
		super();
		this.id = id;
		this.unitPrice = unitPrice;
		this.quantity = quantity;
		this.productDTO = productDTO;
		this.billDTO = billDTO;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public float getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(float unitPrice) {
		this.unitPrice = unitPrice;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public ProductDTO getProductDTO() {
		return productDTO;
	}

	public void setProductDTO(ProductDTO productDTO) {
		this.productDTO = productDTO;
	}

	public BillDTO getBillDTO() {
		return billDTO;
	}

	public void setBillDTO(BillDTO billDTO) {
		this.billDTO = billDTO;
	}

	
	
}
