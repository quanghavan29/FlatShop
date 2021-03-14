package com.coosi29.flatshop.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@Entity
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "item")
public class Item {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "item_id")
	private long itemId;
	
	@ManyToOne
	@JoinColumn(name = "product_id")
	private Product product;
	
	@Column(name = "unit_price")
	private float unitPrice;
	
	@Column(name = "quantity")
	private int quantity;
	
	@ManyToOne
	@JoinColumn(name = "order_id")
	private Order order;
}
