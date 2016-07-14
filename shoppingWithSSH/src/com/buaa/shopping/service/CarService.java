package com.buaa.shopping.service;

import java.util.List;

import com.buaa.shopping.entity.Car;
import com.buaa.shopping.entity.User;

public interface CarService {

	void addCar(Car car);

	List<?> findAll(User user);

	Car getCarById(int i);

	void deleteCar(Car car);
	
}
