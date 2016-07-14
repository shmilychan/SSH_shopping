package com.buaa.shopping.service.impl;

import java.util.List;

import com.buaa.shopping.DAO.CarDAO;
import com.buaa.shopping.entity.Car;
import com.buaa.shopping.entity.User;
import com.buaa.shopping.service.CarService;

public class CarServiceImpl implements CarService {
	private CarDAO carDAO;

	@Override
	public void addCar(Car car) {
		carDAO.saveCar(car);
		
	}
	@Override
	public List<?> findAll(User user) {
		// TODO Auto-generated method stub
		return carDAO.queryAllCar(user);
	}
	@Override
	public Car getCarById(int carId) {
		// TODO Auto-generated method stub
		return carDAO.queryCarById(carId);
	}
	@Override
	public void deleteCar(Car car) {
		this.carDAO.deleteCar(car);
	}
	public void setCarDAO(CarDAO carDAO) {
		this.carDAO = carDAO;
	}
	
	


	
	
	
}
