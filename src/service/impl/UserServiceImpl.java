package service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.UserDao;

import entity.User;
import service.UserService;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	UserDao ud;

	@Override
	public User doLogin(String username, String password) {
		return ud.search(username, password);
	}

}
