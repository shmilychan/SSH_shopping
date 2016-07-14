package com.buaa.shopping.service;


import java.util.List;

import com.buaa.shopping.entity.Order;
import com.buaa.shopping.entity.OrderDetail;
import com.buaa.shopping.entity.User;
import com.buaa.shopping.util.Page;

public interface OrderService {

	void addOrder(Order order);


	List<?> findOrderByUid(User user);

	Order findOrderById(Integer id);

	void updateOrder(Order order);

	Page queryForPage(int pageSize, int page, String keyword, String column);


	List<?> findOrderDetail(Order order);


	void addOrderDetail(OrderDetail orderDetail);


	List<?> findOrderByStatus(String status);
	
	
	
}
