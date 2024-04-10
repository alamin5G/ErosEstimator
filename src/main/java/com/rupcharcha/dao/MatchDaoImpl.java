package com.rupcharcha.dao;

import java.util.List;

import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.rupcharcha.entity.Matching;
import com.rupcharcha.entity.User;


@Repository
public class MatchDaoImpl implements MatchDao{

	@Autowired
	HibernateTemplate hibernateTemplate;

	@Transactional
	@Override
	public int saveData(Matching matching) {
		int i = (int) hibernateTemplate.save(matching);
		return i;
	}

	@Transactional
	@Override
	public void deleteData(int id) {
		Matching matching = hibernateTemplate.get(Matching.class, id);
		hibernateTemplate.delete(matching);
	}

	@Override
	public Matching getDataById(int id) {
		Matching matching = hibernateTemplate.get(Matching.class, id);
		return matching;
	}

	@Override
	public List<Matching> getAllaDataList(User user) {
		List<Matching> matchingHistoryList = hibernateTemplate.execute(s -> {
			String hql = "from Matching where user=:usr";
			Query q = s.createQuery(hql);
			q.setParameter("usr", user);
			return q.getResultList();
		});
		return matchingHistoryList;
	}

	
}
