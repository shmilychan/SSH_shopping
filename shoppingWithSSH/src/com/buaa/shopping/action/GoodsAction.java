package com.buaa.shopping.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import oracle.net.aso.g;

import org.apache.struts2.ServletActionContext;

import com.buaa.shopping.entity.Goods;
import com.buaa.shopping.service.GoodsService;
import com.buaa.shopping.service.GoodsTypeService;
import com.buaa.shopping.util.FileUtils;
import com.buaa.shopping.util.Page;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
public class GoodsAction extends ActionSupport implements ModelDriven<Goods> {
	
	private Goods goods = new Goods();
	private GoodsService goodsService;
	private GoodsTypeService goodsTypeService;
	private List<?> goodsList;
	private List<?> goodsTypeList;
	
	private int pageNo = 1; //表示从网页中返回的当前页的值  默认为1 表示默认显示第一页内容
	private int pageSize = 5;
	private String keyword = "";
	private String column = "goodsname";
	private Page page; //封装了分页信息和数据内容的pageBean    
	
	public String queryGoodsByName(){
		this.page = goodsService.queryForPage(pageSize, pageNo, keyword, column);
		this.goodsList = this.page.getList();
		System.out.println(goodsList.size());
		return SUCCESS;
	}
	
	
	public String goodsList(){
		this.page = goodsService.queryForPage(pageSize, pageNo, keyword, column);//获取封装了分页信息和数据的page    
		this.goodsList = this.page.getList(); //获取数据    
		return SUCCESS;
	}
	
	
	public String preAddGoods(){
		List<?> orderList = new ArrayList();
		goodsTypeService.type(0, goodsTypeService.findAll(),orderList, "");		
		goodsTypeList = orderList;
		return SUCCESS;
	}
	
	public String addGoods() throws IOException{
		/*Date gtime = new Date();
		String ext = picFileName.substring(picFileName.indexOf('.'));
		String filename = Tools.dateToString(gtime)+ext;		
		HttpServletRequest request = ServletActionContext.getRequest();
		String path = request.getSession().getServletContext().getRealPath("/images");
		String goodspic = "images/"+filename;
		File outFile = new File(path,filename);
		FileUtil.copyFile(pic, outFile);
		goods.setGoodspic(goodspic);*/
		goodsService.addGoods(goods);
		return SUCCESS;
	}  	
	
	public String preUpdateGoods(){
		this.goods = goodsService.queryById(goods.getId());
		List<?> orderList = new ArrayList();
		goodsTypeService.type(0, goodsTypeService.findAll(),orderList, "");		
		goodsTypeList = orderList;	
		return SUCCESS;
	}
	
	public String updateGoods(){
		Goods g = goodsService.queryById(goods.getId());
		if(! g.getGoodspic().equals(goods.getGoodspic())){
			String path = ServletActionContext.getRequest().getSession().getServletContext().getRealPath("/admin/upload");
			String name = g.getGoodspic().substring(g.getGoodspic().lastIndexOf("/")+1);
			FileUtils.deleteFile(path, name);
		}
		goodsService.update(goods);
		return SUCCESS;
	}
	
	public String showGoods(){
		this.goods = goodsService.queryById(goods.getId());		
		return SUCCESS;
	}
	
	public String deleteGoodsById(){
		goods = goodsService.queryById(goods.getId());
		goodsService.deleteGoods(goods);
		return SUCCESS;
	}
	//getter and setter
	@Override
	public Goods getModel() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}


	public List<?> getGoodsList() {
		return goodsList;
	}

	public void setGoodsList(List<?> goodsList) {
		this.goodsList = goodsList;
	}

	public List<?> getGoodsTypeList() {
		return goodsTypeList;
	}

	public void setGoodsService(GoodsService goodsService) {
		this.goodsService = goodsService;
	}
	
	public void setGoodsTypeService(GoodsTypeService goodsTypeService) {
		this.goodsTypeService = goodsTypeService;
	}

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getColumn() {
		return column;
	}

	public void setColumn(String column) {
		this.column = column;
	}


	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public Goods getGoods() {
		return goods;
	}

	
}
