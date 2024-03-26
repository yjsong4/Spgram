package com.syj.spgram.user.repository;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.syj.spgram.user.domain.User;

@Mapper
public interface UserRepository {
	
	public int insertUser(
			@Param("userName") String userName
			, @Param("password") String password
			, @Param("name") String name
			, @Param("email") String email);

	public int selectCountByUserName(@Param("userName") String userName);
	
	public User selectUserByUserNameAndPassword(
			@Param("userName") String userName
			, @Param("password") String password);

	public User selectUser(@Param("id") int id);
}
