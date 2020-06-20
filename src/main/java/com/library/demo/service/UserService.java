package com.library.demo.service;

import org.springframework.stereotype.Service;

import com.library.demo.entity.User;

@Service
public interface UserService {
	
	public void registerUser(User user);
	public User getUserById(Long Id);
	public User getUserByEmailId(String emailId);

}
