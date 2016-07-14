package com.buaa.shopping.DAO;

import java.util.List;

import com.buaa.shopping.entity.Role;
import com.buaa.shopping.entity.User;

public interface UserDAO {
	User getUser(String username,String password);

	void saveUser(User user);

	Role findRoleById(int i);

	User findUserById(Integer id);

	void updateUser(User user);

	List<?> findAllUser();

	void deleteUser(User user);
}
