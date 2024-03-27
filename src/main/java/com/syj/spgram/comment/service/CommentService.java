package com.syj.spgram.comment.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.syj.spgram.comment.domain.Comment;
import com.syj.spgram.comment.repository.CommentRepository;

@Service
public class CommentService {
	
	@Autowired
	private CommentRepository commentRepository;
	
	public Comment addComment(int userId, int postId, String contents) {
		
		Comment comment = Comment.builder()
									.userId(userId)
									.postId(postId)
									.contents(contents)
									.build();
		
		return commentRepository.save(comment);
	}

}
