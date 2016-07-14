package com.buaa.shopping.action;

import java.util.ArrayList;
import java.util.List;

import com.buaa.shopping.entity.GoodsType;
import com.buaa.shopping.service.GoodsTypeService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class GoodsTypeAction extends ActionSupport implements ModelDriven<GoodsType> {
	
	private GoodsTypeService goodsTypeService;
	private GoodsType goodsType = new GoodsType();
	private List goodsTypeList ;
	
	public String goodsTypeList(){
		goodsTypeList = goodsTypeService.findAll();
		return SUCCESS;
	}
	
	public String preAddGoodsType(){
		List orderList = new ArrayList();
		goodsTypeService.type(0, getGoodsTypeList(), orderList, "");
		goodsTypeList = orderList;
		return SUCCESS;
	}
	
	public String addGoodsType(){
		goodsTypeService.addGoodsType(goodsType);
		return SUCCESS;
	}
	
	public String showChildtypeByPid(){
		this.goodsTypeList = goodsTypeService.getChildtypeByPid(goodsType.getId());
		return SUCCESS;
	}
	//getter and setter
	@Override
	public GoodsType getModel() {
		
		return goodsType;
	}
		
	public GoodsType getGoodsType() {
		return goodsType;
	}

	public List getGoodsTypeList() {
		return goodsTypeList;
	}

	public void setGoodsTypeList(List goodsTypeList) {
		goodsTypeList = goodsTypeList;
	}

	public void setGoodsTypeService(GoodsTypeService goodsTypeService) {
		this.goodsTypeService = goodsTypeService;
	}
	
	
}
