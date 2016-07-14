package com.buaa.shopping.action;

import java.util.Date;
import java.util.List;
import com.buaa.shopping.entity.Car;
import com.buaa.shopping.entity.Order;
import com.buaa.shopping.entity.OrderDetail;
import com.buaa.shopping.entity.User;
import com.buaa.shopping.service.CarService;
import com.buaa.shopping.service.OrderService;
import com.buaa.shopping.util.Page;
import com.buaa.shopping.util.Tools;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class OrderAction extends ActionSupport implements ModelDriven<Order> {
	private OrderService orderService;
	private CarService carService;
	private Order order = new Order();
	private String[] carIds;
	private String[] totals;
	
	private List<?> orderList;
	private List<?> orderDetailList;
	
	private int pageNo = 1; //表示从网页中返回的当前页的值  默认为1 表示默认显示第一页内容
	private int pageSize = 5;
	private String keyword = "";
	private String column = "status";
	private Page page; //封装了分页信息和数据内容的pageBean
	
	public String addOrder(){
		Order newOrder = new Order();
		newOrder.setBuytime(new Date());
		newOrder.setOrderNum(Tools.dateToString(new Date()));
		newOrder.setStatus("0");
		newOrder.setSendTime(null);
		newOrder.setUser((User)ActionContext.getContext().getSession().get("custom"));
		orderService.addOrder(newOrder);
		for (int i=0; i < carIds.length; i++) {
			Car car = carService.getCarById(Integer.parseInt(carIds[i]));
			OrderDetail orderDetail = new OrderDetail();			
			orderDetail.setGoods(car.getGoods());			
			orderDetail.setTotal(Integer.parseInt(totals[i]));
			orderDetail.setOrder(newOrder);
			orderService.addOrderDetail(orderDetail);
			carService.deleteCar(car);
		}
		return SUCCESS;
		
	}
	
	
	public String findOrderByUid(){
		User user = (User) ActionContext.getContext().getSession().get("custom");
		orderList = orderService.findOrderByUid(user);
		return SUCCESS;
	}
	
	public String findOrderDetail(){
		order = orderService.findOrderById(order.getId());
		orderDetailList = orderService.findOrderDetail(order);
		return SUCCESS;
	}
	
	public String findAllOrder(){
		this.page = orderService.queryForPage(pageSize, pageNo, keyword, column);//获取封装了分页信息和数据的page    
		this.orderList = this.page.getList(); //获取数据    
		return SUCCESS;
	}
	
	public String dealOrder(){
		order = orderService.findOrderById(order.getId());
		order.setStatus("1");
		order.setSendTime(new Date());
		orderService.updateOrder(order);
		return SUCCESS;
	}
	
	public String queryOrderByStatus(){
		this.page = orderService.queryForPage(pageSize, pageNo, keyword, column);//获取封装了分页信息和数据的page    
		this.orderList = this.page.getList(); //获取数据    
		return SUCCESS;
	}
	
	@Override
	public Order getModel() {
		// TODO Auto-generated method stub
		return order;
	}
	public Order getOrder() {
		return order;
	}
	public void setCarIds(String[] carIds) {
		this.carIds = carIds;
	}
	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}
	public void setCarService(CarService carService) {
		this.carService = carService;
	}
	public void setTotals(String[] totals) {
		this.totals = totals;
	}
	public List<?> getOrderList() {
		return orderList;
	}
	public void setOrderList(List<?> orderList) {
		this.orderList = orderList;
	}

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getColumn() {
		return column;
	}

	public void setColumn(String column) {
		this.column = column;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public List<?> getOrderDetailList() {
		return orderDetailList;
	}
	
}
