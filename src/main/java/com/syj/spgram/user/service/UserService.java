package com.syj.spgram.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.syj.spgram.user.repository.UserRepository;

@Service
public class UserService {
	
	@Autowired
	private UserRepository userRepository;
	
	public int addUser(String userName, String password, String name, String email) {
		
		return userRepository.insertUser(userName, password, name, email);
	}

}
