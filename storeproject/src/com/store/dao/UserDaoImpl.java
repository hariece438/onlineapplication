package com.store.dao;

import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.store.entity.UserEntity;
import com.store.model.User;

@Repository
public class UserDaoImpl implements UserDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public int registerUser(UserEntity userEntity) {
		Session session=sessionFactory.getCurrentSession();
		String SQL_QUERY =" from UserEntity as o where o.username=?";
		Query query = session.createQuery(SQL_QUERY);
		query.setParameter(0,userEntity.getUsername());
		List list = query.list();
		int i=list.size();
		if(i==0)
		return (int) session.save(userEntity);
		else
		return 0;	
	}
	
	@Override
	public List loginUser(UserEntity userEntity) {
		Session session=sessionFactory.getCurrentSession();
		//int i=(int) session.get(userEntity.class, userEntity.getId());
		//session.createCriteria("from userEntity where userEntity.getName=? and userEntity.getPassword=?");
		String SQL_QUERY =" from UserEntity as o where o.username=? and o.password=?";
		Query query = session.createQuery(SQL_QUERY);
		query.setParameter(0,userEntity.getUsername());
		query.setParameter(1,userEntity.getPassword());
		List users = query.list();
		for (Iterator iterator = users.iterator(); iterator.hasNext();){
            UserEntity user = (UserEntity) iterator.next(); 
         }
		
		return users;
	}

}
