package com.syj.spgram.post.repository;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface PostRepository {
	
	public int insertPost(
			@Param("userId") int userId
			, @Param("contents") String contents
			, @Param("imagePath") String imagePath);

}
