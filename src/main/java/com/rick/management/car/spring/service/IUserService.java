package com.rick.management.car.spring.service;

import java.util.List;

import com.rick.management.car.spring.persit.domain.User;

public interface IUserService {
	/**
	 * Creates a new user.
	 * 
	 * @param created
	 *            The information of the created user.
	 * @return The created user.
	 */
	public User create(User user);

	/**
	 * Finds all users.
	 * 
	 * @return A list of users.
	 */
	public List<User> findAll();
	/**
	 * Finds user by id.
	 * @param id The id of the wanted user.
	 * @return The found user. If no user is found, this method returns null.
	 */
	public User findById(int id);
	
	public boolean doLogin(String username, String password);
	
	
}
