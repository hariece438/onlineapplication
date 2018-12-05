package com.store.dao;

import java.util.List;

import com.store.entity.UserEntity;
import com.store.model.User;

public interface UserDao {

	int registerUser(UserEntity employeeEntity);

	List loginUser(UserEntity employeeEntity);

}
