package com.store.service;

import java.util.List;

import com.store.entity.UserEntity;
import com.store.model.User;

public interface UserService {

	public int registerUser(UserEntity employeeEntity);

	public List loginUser(UserEntity employeeEntity);
		

}
