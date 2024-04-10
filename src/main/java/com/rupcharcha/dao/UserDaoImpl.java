package com.rupcharcha.dao;

import java.util.List;


import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.rupcharcha.entity.User;

@Transactional
@Repository
public class UserDaoImpl implements UserDao{

	@Autowired
	HibernateTemplate hibernateTemplate;
	
	
	@Override
	public int registerUser(User user) {
		int i = (int) hibernateTemplate.save(user);
		return i;
	}

	@Override
	public void deleteDataByID(int id) {
		User user = hibernateTemplate.get(User.class, id);
		hibernateTemplate.delete(user);
	}

	
	@Override
	public User getDataById(int id) {
		User user = hibernateTemplate.get(User.class,id);
		
		return user;
	}

	@Override
	public List<User> getAllData(User user) {
		List<User> userList = hibernateTemplate.loadAll(User.class);
		return userList;
	}

	@Override
	public User loginUser(String email, String password) {
		String hql = "from User where email=:eml and password=:pass";
		
		User user = (User) hibernateTemplate.execute(s -> {
			Query q = s.createQuery(hql);
			q.setParameter("eml", email);
			q.setParameter("pass", password);
			return q.uniqueResult();
		});
		
		return user;
	}
	
}
