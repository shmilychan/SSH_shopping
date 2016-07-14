package com.buaa.shopping.service;

import java.util.Collection;
import java.util.List;

import com.buaa.shopping.entity.Goods;
import com.buaa.shopping.util.Page;

public interface GoodsService {

	void addGoods(Goods goods);
	
	Page queryForPage(int pageSize, int page, String keyword,
			String column);
	
	Goods queryById(Integer id);

	void update(Goods goods);

	List<?> queryByTypeid(int typeid);

	void deleteGoods(Goods goods);
	
}
