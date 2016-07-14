package com.buaa.shopping.service.impl;

import java.util.List;

import com.buaa.shopping.DAO.GoodsTypeDAO;
import com.buaa.shopping.entity.GoodsType;
import com.buaa.shopping.service.GoodsTypeService;

public class GoodsTypeServiceImpl implements GoodsTypeService {
	private GoodsTypeDAO goodsTypeDAO;
	
	@Override
	public List<?> findAll() {
		return goodsTypeDAO.SelectAll();
	}
	
	@Override
	public void addGoodsType(GoodsType goodsType) {
		goodsTypeDAO.insert(goodsType);
		
	}
	
	@Override
	public void type(int i ,List list,List ol,String f){		
		for(int j=0 ;j < list.size();j++){
			GoodsType goodsType = (GoodsType)list.get(j);
			if(goodsType.getPid() != i){			
				continue;
			}else{
				goodsType.setTypename(f+goodsType.getTypename());
				ol.add(goodsType);
				type(goodsType.getId(), list, ol, f+"*");
			}
		}	
	}
	
	@Override
	public List<?> getChildtypeByPid(Integer id) {
		// TODO Auto-generated method stub
		return goodsTypeDAO.getChildtypeByPid(id);
	}
	
	public void setGoodsTypeDAO(GoodsTypeDAO goodsTypeDAO) {
		this.goodsTypeDAO = goodsTypeDAO;
	}


}
