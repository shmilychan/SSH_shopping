package com.buaa.shopping.entity;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="orderDetail")
public class OrderDetail {
	
	private Goods goods;
	private Integer id;
	private Integer total;
	private Order order;
	
	@ManyToOne()
	@JoinColumn(name="gid")
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	
	@Id
	@GeneratedValue
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getTotal() {
		return total;
	}
	public void setTotal(Integer total) {
		this.total = total;
	}
	
	@ManyToOne(targetEntity=Order.class,fetch = FetchType.LAZY)
	@JoinColumn(name="oid", referencedColumnName="id")
	public Order getOrder() {
		return order;
	}
	
	public void setOrder(Order order) {
		this.order = order;
	}
	
}
