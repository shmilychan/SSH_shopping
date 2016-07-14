package com.buaa.shopping.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.buaa.shopping.entity.Goods;
import com.buaa.shopping.entity.GoodsType;
import com.buaa.shopping.service.GoodsService;
import com.buaa.shopping.service.GoodsTypeService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class IndexAction extends ActionSupport {
	private GoodsService goodsService;
	private GoodsTypeService goodsTypeService;
	private List<?> goodsTypes;

	
	
	public String index(){
		goodsTypes = goodsTypeService.getChildtypeByPid(0);
		Map<String, Object> session = ActionContext.getContext().getSession();
		session.put("goodsTypes", goodsTypes);
		List<List> allGoods = new ArrayList<List>();
		for(int i=0; i < goodsTypes.size(); i++){
			List<Goods> partList = new ArrayList<Goods>();
			List<?> list = goodsTypeService.getChildtypeByPid(((GoodsType)goodsTypes.get(i)).getId());
			for(int j=0; j<list.size(); j++){
				int typeid = ((GoodsType)list.get(j)).getId();
				List list3 = goodsService.queryByTypeid(typeid);
				for(int z = 0; z < list3.size(); z++){
					partList.add((Goods)list3.get(z));
				}
			}
			allGoods.add(partList);
		}
		session.put("allGoods", allGoods);
		return SUCCESS;
	}
	
	

	public void setGoodsService(GoodsService goodsService) {
		this.goodsService = goodsService;
	}
	public void setGoodsTypeService(GoodsTypeService goodsTypeService) {
		this.goodsTypeService = goodsTypeService;
	}
	
}
