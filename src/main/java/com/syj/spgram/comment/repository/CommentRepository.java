package com.syj.spgram.comment.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.syj.spgram.comment.domain.Comment;

public interface CommentRepository extends JpaRepository<Comment, Integer> {

}
