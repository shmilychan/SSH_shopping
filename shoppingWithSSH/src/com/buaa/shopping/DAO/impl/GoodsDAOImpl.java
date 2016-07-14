package com.buaa.shopping.DAO.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.buaa.shopping.DAO.GoodsDAO;
import com.buaa.shopping.entity.Goods;

public class GoodsDAOImpl extends HibernateDaoSupport implements GoodsDAO {

	@Override
	public void insert(Goods goods) {
		this.getHibernateTemplate().save(goods);
	}

	@Override
	public Goods selectById(Integer id) {
		
		return (Goods)this.getHibernateTemplate().get("com.buaa.shopping.entity.Goods", id);
	}

	@Override
	public void updateGoods(Goods goods) {
		
		this.getHibernateTemplate().saveOrUpdate(goods);
		
	}

	@Override
	public List<?> queryByTypeid(int typeid) {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().find("from Goods where goodstype="+typeid);
	}

	@Override
	public void deleteGoods(Goods goods) {
		this.getHibernateTemplate().delete(goods);
		
	}
	
}
