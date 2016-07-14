package com.buaa.shopping.DAO;

import java.util.List;

import com.buaa.shopping.entity.Goods;

public interface GoodsDAO {

	void insert(Goods goods);
	
	Goods selectById(Integer id);

	void updateGoods(Goods goods);

	List<?> queryByTypeid(int typeid);

	void deleteGoods(Goods goods);
}
