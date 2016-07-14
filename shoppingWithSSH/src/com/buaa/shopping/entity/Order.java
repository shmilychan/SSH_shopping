package com.buaa.shopping.entity;

import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="tbl_order")
public class Order {
	
	private Integer id;
	private User user;
	//private Set<OrderDetail> orderDetails;
	private Date buytime;
	private String status;
	private String orderNum;
	private Date sendTime;
	@Id
	@GeneratedValue
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	@ManyToOne
	@JoinColumn(name="uid")
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	public Date getBuytime() {
		return buytime;
	}
	public void setBuytime(Date date) {
		this.buytime = date;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}	
	/*@OneToMany(fetch = FetchType.LAZY,mappedBy="order",cascade=CascadeType.ALL)
	@JoinColumn(name="oid")
	public Set<OrderDetail> getOrderDetails() {
		return orderDetails;
	}
	public void setOrderDetails(Set<OrderDetail> orderDetails) {
		this.orderDetails = orderDetails;
	}*/
	public String getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
	}
	public Date getSendTime() {
		return sendTime;
	}
	public void setSendTime(Date sendTime) {
		this.sendTime = sendTime;
	}
	
	
	
	
}
