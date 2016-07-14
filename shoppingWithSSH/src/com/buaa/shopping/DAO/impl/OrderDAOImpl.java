package com.buaa.shopping.DAO.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.buaa.shopping.DAO.OrderDAO;
import com.buaa.shopping.entity.Order;
import com.buaa.shopping.entity.OrderDetail;
import com.buaa.shopping.entity.User;

public class OrderDAOImpl extends HibernateDaoSupport implements OrderDAO {

	@Override
	public void saveOrder(Order order) {
		this.getHibernateTemplate().save(order);
		
	}


	@Override
	public List<?> queryByUid(User user) {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().find("from Order where user.id="+user.getId());
	}

	@Override
	public Order queryOrderById(Integer id) {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().get(Order.class, id);
	}

	@Override
	public void updateOrder(Order order) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().saveOrUpdate(order);
	}


	@Override
	public List<?> findOrderDetail(Order order) {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().find("from OrderDetail where order.id="+order.getId());
	}


	@Override
	public void addOrderDetail(OrderDetail orderDetail) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(orderDetail);
	}


	@Override
	public List<?> findOrderByStatus(String status) {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().find("from Order where status="+status);
	}

}
