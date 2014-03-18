package com.rick.management.car.spring.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.rick.management.car.spring.persit.domain.User;

@Repository
public class UserDaoImpl implements UserDao {
	@Autowired
	protected SessionFactory sessionFactory;

	protected Session getCurrentSession() {
		return sessionFactory.openSession();
	}

	@Override
	public boolean doLogin(String username, String password) {
		boolean result = false;
		String sql = "FROM User u where u.userName = '" + username
				+ "' and u.password = '" + password + "'";
		Transaction tx = null;
		User user = null;
		Session session = getCurrentSession();
		try {
			tx = session.beginTransaction();
			Query query = session.createQuery(sql);
			List list = query.list();
			if(list.size()>0)
			{	
			user = (User) query.list().get(0);
			if (user != null) {
				result = true;
			}
			}

		} catch (HibernateException e) {

		}
		return result;
	}

	@Override
	public User create(User user) {
		// TODO Auto-generated method stub
		return null;
	}

}
