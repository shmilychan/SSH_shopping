package com.buaa.shopping.DAO.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.buaa.shopping.DAO.PageDAO;
import com.buaa.shopping.entity.Goods;

public class PageDAOImpl extends HibernateDaoSupport implements PageDAO {

	@Override
	public List<?> queryForPage(String classname, String column, String keyword, int offset, int length) {		
		
		DetachedCriteria c = null;
		try {
			c = DetachedCriteria.forClass(Class.forName(classname));
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		// 加入模糊查询的条件
		c.add(Restrictions.like(column, "%"+keyword+"%"));

		List<?> all = super.getHibernateTemplate().findByCriteria(c,
				offset, length);
		return all;
	}
	

	@Override
	public int getAllRowCount(String keyword, String column,String classname) {
		String hql = "SELECT COUNT(*) FROM "+classname+" AS t WHERE t." + column
				+ " LIKE ?";
		List all = super.getHibernateTemplate().find(hql,"%"+keyword+"%");
		return ((Long) all.get(0)).intValue();
	}

}
