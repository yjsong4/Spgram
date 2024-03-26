package com.syj.spgram.post.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.syj.spgram.post.domain.Post;

@Mapper
public interface PostRepository {
	
	public int insertPost(
			@Param("userId") int userId
			, @Param("contents") String contents
			, @Param("imagePath") String imagePath);
	
	public Post selectPost(@Param("id") int id);

	public List<Post> selectPostList();

}
