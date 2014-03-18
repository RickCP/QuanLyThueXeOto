package com.rick.management.car.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rick.management.car.spring.dao.UserDao;
import com.rick.management.car.spring.persit.domain.User;
@Service
public class UserService extends BaseService implements IUserService {
    @Autowired
    private UserDao userDao;
	@Override
	public User create(User user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<User> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@Transactional
	public boolean doLogin(String username, String password) {
		return userDao.doLogin(username, password);
	}

}
