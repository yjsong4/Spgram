package com.syj.spgram.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.syj.spgram.common.EncryptUtils;
import com.syj.spgram.user.domain.User;
import com.syj.spgram.user.repository.UserRepository;

@Service
public class UserService {
	
	@Autowired
	private UserRepository userRepository;
	
	public int addUser(String userName, String password, String name, String email) {
		
		String encryptPassword = EncryptUtils.md5(password);
		
		return userRepository.insertUser(userName, encryptPassword, name, email);
	}
	
	public boolean isDuplicateUserName(String userName) {
		
		int count = userRepository.selectCountByUserName(userName);
		
		if(count == 0) { // 카운트가 0이면 중복이 아니다
			return false;
		} else {
			return true;
		}
	}
	
	public User getUserByUserNameAndPassword(String userName, String password) {
		
		String encryptPassword = EncryptUtils.md5(password);
		
		return userRepository.selectUserByUserNameAndPassword(userName, encryptPassword);
	}
	
	public User getUser(int id) {
		
		return userRepository.selectUser(id);
	}

}
