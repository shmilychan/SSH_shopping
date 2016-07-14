package com.buaa.shopping.DAO;

import java.util.List;

public interface PageDAO {
	
	

	List<?> queryForPage(String classname, String column, String keyword, int offset, int length);

	int getAllRowCount(String keyword, String column, String classname);
	
}
