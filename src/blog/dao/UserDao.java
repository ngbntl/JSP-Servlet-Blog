package blog.dao;

import blog.model.User;

public interface UserDao {

	/**
	 * 
	 * @param username
	 * @param password
	 * @return
	 */
	boolean register(String username, String password);

	/**
	 * 
	 * @param username
	 * @param password
	 * @return
	 */
	User login(String username, String password);

}