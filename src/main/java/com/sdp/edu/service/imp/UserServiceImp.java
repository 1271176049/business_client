package com.sdp.edu.service.imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sdp.edu.bean.T_MALL_USER_ACCOUNT;
import com.sdp.edu.mapper.UserMapper;
import com.sdp.edu.service.UserService;
@Service
public class UserServiceImp implements UserService {
@Autowired
private UserMapper userMapper;
	@Override
	public T_MALL_USER_ACCOUNT getUser(T_MALL_USER_ACCOUNT user) {
		return userMapper.select_user(user);
	}

}
