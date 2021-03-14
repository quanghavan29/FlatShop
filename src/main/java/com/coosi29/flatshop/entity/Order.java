package com.coosi29.flatshop.entity;

import java.sql.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "order_user")
public class Order {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "order_id")
	private long orderId;
	
	@Column(name = "buy_date")
	private Date buyDate;
	
	@Column(name = "status")
	private String status;
	
	@Column(name = "price_total")
	private float priceTotal;
	
	@ManyToOne
	@JoinColumn(name = "user_id")
	private User buyer;
	
	@OneToMany(mappedBy = "order")
	private List<Item> items;
	
}
