package com.buaa.shopping.DAO.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.buaa.shopping.DAO.UserDAO;
import com.buaa.shopping.entity.Role;
import com.buaa.shopping.entity.User;

public class UserDAOImpl extends HibernateDaoSupport implements UserDAO {
	
	
	
	public User getUser(String username,String password){
		List<?> list = this.getHibernateTemplate().find("from User where username=? and password=?",new Object[]{username,password});
		User user = null;
		while(!list.isEmpty()){
			user = (User) list.get(0);
			break;
		}
		return user;
	}

	@Override
	public void saveUser(User user) {
		this.getHibernateTemplate().save(user);
		
	}

	@Override
	public Role findRoleById(int i) {
		return (Role) this.getHibernateTemplate().find("from Role where id="+i).get(0);		
	}

	@Override
	public User findUserById(Integer id) {
		// TODO Auto-generated method stub
		return (User) this.getHibernateTemplate().find("from User where id=?", id).get(0);
	}

	@Override
	public void updateUser(User user) {
		this.getHibernateTemplate().update(user);
		
	}

	@Override
	public List<?> findAllUser() {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().find("from User");
	}

	@Override
	public void deleteUser(User user) {
		this.getHibernateTemplate().delete(user);
		
	}
	
}
