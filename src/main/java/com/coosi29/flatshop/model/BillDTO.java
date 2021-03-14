package com.coosi29.flatshop.model;

import java.sql.Date;

public class BillDTO {

	private int id;
	private UserDTO userDTO;
	private Date buyDate;
	private long priceTotal;
	private String status;
	
	public BillDTO() {
		// TODO Auto-generated constructor stub
	}

	public BillDTO(int id, UserDTO userDTO, Date buyDate, long priceTotal, String status) {
		super();
		this.id = id;
		this.userDTO = userDTO;
		this.buyDate = buyDate;
		this.priceTotal = priceTotal;
		this.status = status;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public UserDTO getUserDTO() {
		return userDTO;
	}

	public void setUserDTO(UserDTO userDTO) {
		this.userDTO = userDTO;
	}

	public Date getBuyDate() {
		return buyDate;
	}

	public void setBuyDate(Date buyDate) {
		this.buyDate = buyDate;
	}

	public long getPriceTotal() {
		return priceTotal;
	}

	public void setPriceTotal(long priceTotal) {
		this.priceTotal = priceTotal;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	
}
