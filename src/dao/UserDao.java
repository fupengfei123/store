package dao;

import entity.User;

public interface UserDao {

	public User search(String username,String password);

}
