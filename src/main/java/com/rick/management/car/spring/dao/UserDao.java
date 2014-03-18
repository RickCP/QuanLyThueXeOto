package com.rick.management.car.spring.dao;

import com.rick.management.car.spring.persit.domain.User;

public interface UserDao {
	public boolean doLogin(String username,String password);
	public User create(User user);

}
