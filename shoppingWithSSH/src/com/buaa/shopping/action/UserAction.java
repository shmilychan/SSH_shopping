package com.buaa.shopping.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.buaa.shopping.entity.User;
import com.buaa.shopping.service.UserService;
import com.buaa.shopping.util.Page;
import com.buaa.shopping.util.VerifyCode;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class UserAction extends ActionSupport implements ModelDriven<User>{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UserService userService;
	private User user = new User();
	private String verifyCode;
	private List<?> userList;
	
	private int pageNo = 1; //表示从网页中返回的当前页的值  默认为1 表示默认显示第一页内容
	private int pageSize = 10;
	private String keyword = "";
	private String column = "username";
	private Page page; //封装了分页信息和数据内容的pageBean
	
	private String errMsg;
	
	public String checkLogin(){
		String v = (String) ServletActionContext.getRequest().getSession().getAttribute("verifyCode");
		if(!(v != null && v.equalsIgnoreCase(verifyCode))){
			return "adminLogin";
		}
		User u = userService.findUser(user.getUsername(), user.getPassword());
		if(u != null && (u.getRole().getId()==1 || u.getRole().getId()==3)){
			ActionContext.getContext().getSession().put("admin", u);
			return SUCCESS;
		}else{
			return "adminLogin";
		}
	}
	
	public String userCheckLogin(){
		String v = (String) ServletActionContext.getRequest().getSession().getAttribute("verifyCode");
		if(!v.equalsIgnoreCase(verifyCode)){
			return "userLogin";
		}
		User u = userService.findUser(user.getUsername(), user.getPassword());
		if(u != null){
			ActionContext.getContext().getSession().put("custom", u);
			return SUCCESS;
		}else{
			return "userLogin";
		}
	}
	
	public String logout(){
		ActionContext.getContext().getSession().remove("user");
		return SUCCESS;
	}
	
	public String register(){
		user.setRole(userService.findRoleById(2));
		userService.addUser(user);
		return SUCCESS;
	}
	public String preUpdate(){
		user = userService.findUserById(user.getId());
		return SUCCESS;
	}
	
	public String userUpdate(){
		System.out.println(user.getId());
		userService.updateUser(user);
		return SUCCESS;
	}
	
	public String findAllUser(){
		this.page = userService.queryForPage(pageSize, pageNo, keyword, column);//获取封装了分页信息和数据的page    
		this.userList = this.page.getList(); //获取数据    
		return SUCCESS;
	}
	
	public String deleteUser(){
		user = userService.findUserById(user.getId());
		userService.deleteUser(user);
		return SUCCESS;
	}
	
	public String verifyCode(){
		
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();
		VerifyCode.getVerifyCode(request, response);
		return null;
	}

	public User getModel() {
		return user;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public void setVerifyCode(String verifyCode) {
		this.verifyCode = verifyCode;
	}

	public User getUser() {
		return user;
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

	public List<?> getUserList() {
		return userList;
	}

	public void setUserList(List<?> userList) {
		this.userList = userList;
	}

	public String getErrMsg() {
		return errMsg;
	}
	
	
}
