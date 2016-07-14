package com.buaa.shopping.DAO;

import java.util.List;

import com.buaa.shopping.entity.Order;
import com.buaa.shopping.entity.OrderDetail;
import com.buaa.shopping.entity.User;

public interface OrderDAO {

	void saveOrder(Order order);

	List queryByUid(User user);

	Order queryOrderById(Integer id);

	void updateOrder(Order order);

	List<?> findOrderDetail(Order order);

	void addOrderDetail(OrderDetail orderDetail);

	List<?> findOrderByStatus(String status);

}
