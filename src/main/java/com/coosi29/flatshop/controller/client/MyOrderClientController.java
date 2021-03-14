package com.coosi29.flatshop.controller.client;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.coosi29.flatshop.model.ItemDTO;
import com.coosi29.flatshop.model.UserPrincipal;
import com.coosi29.flatshop.service.ItemService;
import com.coosi29.flatshop.service.OrderService;

@Controller
@RequestMapping(value = "/client")
public class MyOrderClientController {

	@Autowired
	private OrderService orderService;
	
	@Autowired
	private ItemService itemService;
	
	@GetMapping(value = "/my-order")
	public String myOrder(HttpServletRequest request) {
		UserPrincipal userPrincipal = (UserPrincipal) request.getSession().getAttribute("user");
		long userId = (long) userPrincipal.getUserId();
		request.setAttribute("orders", orderService.findByBuyer(userId));
		return "client/my_order";
	}
	
	@GetMapping(value = "order-details")
	public String orderDetails(HttpServletRequest request, @RequestParam(name = "orderId") long orderId) {
		List<ItemDTO> itemDTOs = itemService.findByOrderId(orderId);
		float subTotal = 0;
		for (ItemDTO itemDTO : itemDTOs) {
			subTotal += (itemDTO.getUnitPrice() * itemDTO.getQuantity());
		}
		float grandTotal = subTotal + 5;
		request.setAttribute("subTotal", subTotal);
		request.setAttribute("grandTotal", grandTotal);
		request.setAttribute("items", itemDTOs);
		return "client/order_details";  
	}
}
