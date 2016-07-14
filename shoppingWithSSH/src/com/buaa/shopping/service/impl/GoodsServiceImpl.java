package com.buaa.shopping.service.impl;

import java.util.List;
import com.buaa.shopping.DAO.GoodsDAO;
import com.buaa.shopping.DAO.PageDAO;
import com.buaa.shopping.entity.Goods;
import com.buaa.shopping.service.GoodsService;
import com.buaa.shopping.util.Page;

public class GoodsServiceImpl implements GoodsService {
	
	private GoodsDAO goodsDAO;
	private PageDAO pageDAO;

	

	@Override
	public void addGoods(Goods goods) {
		// TODO Auto-generated method stub
		goodsDAO.insert(goods);
	}
	@Override
	public Page queryForPage(int pageSize, int page, String keyword,
			String column) {    
		int allRow = pageDAO.getAllRowCount(keyword, column, "Goods");  //总记录数    
		int totalPage = Page.countTatalPage(pageSize, allRow); //总页数    
		final int offset = Page.countOffset(pageSize, page); //当前页开始记录    
		final int length = pageSize; // 每页记录数    
		final int currentPage = Page.countCurrentPage(page); // 当前页    
		List<?> list = pageDAO.queryForPage("com.buaa.shopping.entity.Goods", column, keyword, offset, length); //    
		//把分页信息保存到Bean当中    
		Page Page  = new Page();    
		Page.setPageSize(pageSize);    
		Page.setCurrentPage(currentPage);    
		Page.setAllRow(allRow);    
		Page.setTotalPage(totalPage);    
		Page.setList(list);    
		Page.init();    
		return Page;    
	}
	@Override
	public List<?> queryByTypeid(int typeid) {
		// TODO Auto-generated method stub
		return goodsDAO.queryByTypeid(typeid);
	}
	
	@Override
	public void deleteGoods(Goods goods) {
		// TODO Auto-generated method stub
		goodsDAO.deleteGoods(goods);
	}
	@Override
	public Goods queryById(Integer id){
		return goodsDAO.selectById(id);
	}
	
	@Override
	public void update(Goods goods) {
		goodsDAO.updateGoods(goods);
		
	}
	
	
	public void setGoodsDAO(GoodsDAO goodsDAO) {
		this.goodsDAO = goodsDAO;
	}
	
	
	public void setPageDAO(PageDAO pageDAO) {
		this.pageDAO = pageDAO;
	}
	
	
	

	
}
