package com.buaa.shopping.DAO.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.buaa.shopping.DAO.GoodsTypeDAO;
import com.buaa.shopping.entity.GoodsType;

public class GoodsTypeDAOImpl extends HibernateDaoSupport implements GoodsTypeDAO {

	@Override
	public List<?> SelectAll() {
		
		return this.getHibernateTemplate().find("from GoodsType");
	}
	
	@Override
	public void insert(GoodsType goodsType) {
		this.getHibernateTemplate().save(goodsType);
		
	}

	@Override
	public List<?> getChildtypeByPid(Integer id) {
		return this.getHibernateTemplate().find("from GoodsType where pid="+id);
	}
}
