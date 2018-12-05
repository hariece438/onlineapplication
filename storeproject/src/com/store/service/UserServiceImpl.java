package com.store.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.store.dao.UserDao;
import com.store.entity.UserEntity;
import com.store.model.User;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	UserDao userDao;
	
	
	@Override
	@Transactional
	public int registerUser(UserEntity userEntity) {
	return userDao.registerUser(userEntity);	
		
	}


	@Override
	@Transactional
	public List loginUser(UserEntity userEntity) {
		// TODO Auto-generated method stub
		return userDao.loginUser(userEntity);
	}

}
