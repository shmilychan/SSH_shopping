package com.buaa.shopping.service;

import java.util.List;

import com.buaa.shopping.entity.GoodsType;

public interface GoodsTypeService {
	List<?> findAll();

	void type(int i, List<?> findAll, List<?> goodsTypeList, String string);

	void addGoodsType(GoodsType goodsType);

	List<?> getChildtypeByPid(Integer id);

}
