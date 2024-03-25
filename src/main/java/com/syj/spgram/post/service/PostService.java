package com.syj.spgram.post.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.multipart.MultipartFile;

import com.syj.spgram.common.FileManager;
import com.syj.spgram.post.repository.PostRepository;

public class PostService {
	
	@Autowired
	private PostRepository postrepository;
	
	public int addPost(int userId, String contents, MultipartFile file) {
		
		String imagePath = FileManager.saveFile(userId, file);
		
		return postrepository.insertPost(userId, contents, imagePath);
	}

}
