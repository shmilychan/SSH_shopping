package com.buaa.shopping.service.impl;

import java.util.List;

import com.buaa.shopping.DAO.PageDAO;
import com.buaa.shopping.DAO.UserDAO;
import com.buaa.shopping.DAO.impl.UserDAOImpl;
import com.buaa.shopping.entity.Role;
import com.buaa.shopping.entity.User;
import com.buaa.shopping.service.UserService;
import com.buaa.shopping.util.Page;

public class UserServiceImpl implements UserService{
	private UserDAO userDAO;
	private PageDAO pageDAO;
	
	public User findUser(String username,String password){
		User user = null;
		user = userDAO.getUser(username, password);
		return user;
	}
	@Override
	public void addUser(User user) {
		userDAO.saveUser(user);
		
	}
	@Override
	public Role findRoleById(int i) {
		return userDAO.findRoleById(i);
		
	}
	@Override
	public User findUserById(Integer id) {
		// TODO Auto-generated method stub
		return userDAO.findUserById(id);
	}
	
	@Override
	public void updateUser(User user) {
		userDAO.updateUser(user);
		
	}
	
	@Override
	public Page queryForPage(int pageSize, int page, String keyword,
			String column) {
		int allRow = pageDAO.getAllRowCount(keyword, column, "User");  //总记录数    
		int totalPage = Page.countTatalPage(pageSize, allRow); //总页数    
		final int offset = Page.countOffset(pageSize, page); //当前页开始记录    
		final int length = pageSize; // 每页记录数    
		final int currentPage = Page.countCurrentPage(page); // 当前页    
		List<?> list = pageDAO.queryForPage("com.buaa.shopping.entity.User", column, keyword, offset, length); //    
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
	public void deleteUser(User user) {
		// TODO Auto-generated method stub
		userDAO.deleteUser(user);
	}
	public void setUserDAO(UserDAOImpl userDAO) {
		this.userDAO = userDAO;
	}
	public void setPageDAO(PageDAO pageDAO) {
		this.pageDAO = pageDAO;
	}
	
	
	
	
	
}
