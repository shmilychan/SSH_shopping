package com.buaa.shopping.service.impl;

import java.util.List;

import com.buaa.shopping.DAO.OrderDAO;
import com.buaa.shopping.DAO.PageDAO;
import com.buaa.shopping.entity.Order;
import com.buaa.shopping.entity.OrderDetail;
import com.buaa.shopping.entity.User;
import com.buaa.shopping.service.OrderService;
import com.buaa.shopping.util.Page;

public class OrderServiceImpl implements OrderService {
	private OrderDAO orderDAO;
	private PageDAO pageDAO;

	@Override
	public void addOrder(Order order) {
		this.orderDAO.saveOrder(order);		
	}
	
	@Override
	public List<?> findOrderByUid(User user) {
		
		return orderDAO.queryByUid(user);
	}
	
	@Override
	public Order findOrderById(Integer id) {
		// TODO Auto-generated method stub
		return orderDAO.queryOrderById(id);
	}
	@Override
	public void updateOrder(Order order) {
		orderDAO.updateOrder(order);
		
	}
	
	@Override
	public Page queryForPage(int pageSize, int page, String keyword,
			String column) {
		int allRow = pageDAO.getAllRowCount(keyword, column, "Order");  //总记录数    
		int totalPage = Page.countTatalPage(pageSize, allRow); //总页数    
		final int offset = Page.countOffset(pageSize, page); //当前页开始记录    
		final int length = pageSize; // 每页记录数    
		final int currentPage = Page.countCurrentPage(page); // 当前页    
		List<?> list = pageDAO.queryForPage("com.buaa.shopping.entity.Order", column, keyword, offset, length);
		//    
		//把分页信息保存到Bean当中    
		Page Page  = new Page();    
		Page.setPageSize(pageSize);    
		Page.setCurrentPage(currentPage);    
		Page.setAllRow(allRow);    
		Page.setTotalPage(totalPage);    
		Page.setList(list);    
		Page.init();    
		return Page; 
	}
	
	@Override
	public List<?> findOrderDetail(Order order) {
		return orderDAO.findOrderDetail(order);
	}
	
	@Override
	public void addOrderDetail(OrderDetail orderDetail) {
		// TODO Auto-generated method stub
		orderDAO.addOrderDetail(orderDetail);
	}

	@Override
	public List<?> findOrderByStatus(String status) {
		return orderDAO.findOrderByStatus(status);
		
	}
	public void setOrderDAO(OrderDAO orderDAO) {
		this.orderDAO = orderDAO;
	}

	public void setPageDAO(PageDAO pageDAO) {
		this.pageDAO = pageDAO;
	}

	

	
	

	
	
}
