package com.syj.spgram.like.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.syj.spgram.like.domain.Like;

public interface LikeRepository extends JpaRepository<Like, Integer> {

}
