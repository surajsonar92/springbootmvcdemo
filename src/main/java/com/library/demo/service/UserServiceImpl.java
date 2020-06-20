package com.library.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.library.demo.entity.User;
import com.library.demo.repository.UserRepository;
@Service
public class UserServiceImpl implements UserService {
	@Autowired
	UserRepository userRepository;
	
	@Override
	public void registerUser(User user) {
		userRepository.saveAndFlush(user);
		
	}

	@Override
	public User getUserById(Long Id) {
	
		return userRepository.findById(Id).get();
	}

	@Override
	public User getUserByEmailId(String emailId) {		
		return userRepository.findByEmailId(emailId);
	}

}
