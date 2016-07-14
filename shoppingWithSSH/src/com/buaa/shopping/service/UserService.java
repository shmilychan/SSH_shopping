package com.buaa.shopping.service;

import com.buaa.shopping.entity.Role;
import com.buaa.shopping.entity.User;
import com.buaa.shopping.util.Page;

public interface UserService {
	User findUser(String username, String password);

	void addUser(User user);

	Role findRoleById(int i);

	User findUserById(Integer id);

	void updateUser(User user);

	Page queryForPage(int pageSize, int pageNo, String keyword, String column);

	void deleteUser(User user);
}
