package com.buaa.shopping.DAO.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.buaa.shopping.DAO.CarDAO;
import com.buaa.shopping.entity.Car;
import com.buaa.shopping.entity.User;

public class CarDAOImpl extends HibernateDaoSupport implements CarDAO {

	@Override
	public void saveCar(Car car) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(car);
	}

	@Override
	public List<?> queryAllCar(User user) {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().find("from Car where user.id="+user.getId());
	}

	@Override
	public Car queryCarById(int carId) {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().get(Car.class, carId);
	}

	@Override
	public void deleteCar(Car car) {
		this.getHibernateTemplate().delete(car);
		
	}

}
