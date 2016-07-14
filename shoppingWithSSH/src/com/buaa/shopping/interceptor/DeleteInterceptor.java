package com.buaa.shopping.interceptor;

import java.util.Map;

import com.buaa.shopping.entity.User;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class DeleteInterceptor extends AbstractInterceptor {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		User user =  (User) invocation.getInvocationContext().getSession().get("admin");
		if(user == null || user.getRole().getId() != 3 ){
			return "success";
		}else{
			return invocation.invoke();
		}

	}

}
