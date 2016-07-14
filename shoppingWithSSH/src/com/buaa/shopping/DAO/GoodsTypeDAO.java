package com.buaa.shopping.DAO;

import java.util.List;

import com.buaa.shopping.entity.GoodsType;

public interface GoodsTypeDAO {
	List<?> SelectAll();

	void insert(GoodsType goodsType);

	List<?> getChildtypeByPid(Integer id);
}
