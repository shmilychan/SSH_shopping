package com.buaa.shopping.DAO;

import java.util.List;

import com.buaa.shopping.entity.Car;
import com.buaa.shopping.entity.User;

public interface CarDAO {

	void saveCar(Car car);

	List<?> queryAllCar(User user);

	Car queryCarById(int carId);

	void deleteCar(Car car);

}
