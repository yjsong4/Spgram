package com.syj.spgram.like.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.syj.spgram.like.domain.Like;
import com.syj.spgram.like.repository.LikeRepository;

@Service
public class LikeService {
	
	@Autowired
	private LikeRepository likeRepository;
	
	public Like addLike(int userId, int postId) {
		
		Like like = Like.builder()
						.userId(userId)
						.postId(postId)
						.build();
		
		return likeRepository.save(like);
	}

}
