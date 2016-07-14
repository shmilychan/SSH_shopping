package com.buaa.shopping.action;

import java.util.Date;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.buaa.shopping.entity.Car;
import com.buaa.shopping.entity.Goods;
import com.buaa.shopping.entity.User;
import com.buaa.shopping.service.CarService;
import com.buaa.shopping.service.GoodsService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class CarAction extends ActionSupport implements ModelDriven<Car> {


	private Car car = new Car();
	private CarService carService;
	private GoodsService goodsService;
//	private Goods goods;
	private int gid;
	private User user;
	private List<?> cars;
	
	public String showCar(){
		user = (User) ActionContext.getContext().getSession().get("custom");
		cars = carService.findAll(user);
		return SUCCESS;	
	}
	
	
	public String addCar(){	
		user = (User) ServletActionContext.getRequest().getSession().getAttribute("custom");
		cars = carService.findAll(user);
		boolean flag = true;
		for(int i = 0; i < cars.size(); i++){
			Goods g = ((Car)cars.get(i)).getGoods();
			if(g.getId() == gid){
				flag = false;
				break;
			}
		}
		if(flag){
			this.car.setUser(user);
			this.car.setGoods(goodsService.queryById(gid));
			car.setBuytime(new Date());
			carService.addCar(car);
			return SUCCESS;
		}else{
			return SUCCESS;
		}
	}
	
	@Override
	public Car getModel() {
		// TODO Auto-generated method stub
		return car;
	}

	public Car getCar() {
		return car;
	}

//	public Goods getGoods() {
//		return goods;
//	}
//
//	public void setGoods(Goods goods) {
//		System.out.println("!!!!!!!!!!!!");
//		this.goods = goods;
//	}
	public int getGid() {
		return gid;
	}


	public void setGid(int gid) {
		this.gid = gid;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}

	public List<?> getCars() {
		return cars;
	}

	public void setCars(List<?> cars) {
		this.cars = cars;
	}

	public void setCarService(CarService carService) {
		this.carService = carService;
	}

	public void setGoodsService(GoodsService goodsService) {
		this.goodsService = goodsService;
	}
	
}
