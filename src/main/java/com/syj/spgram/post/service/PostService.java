package com.syj.spgram.post.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.syj.spgram.common.FileManager;
import com.syj.spgram.post.domain.Post;
import com.syj.spgram.post.dto.PostDetail;
import com.syj.spgram.post.repository.PostRepository;
import com.syj.spgram.user.domain.User;
import com.syj.spgram.user.service.UserService;

@Service
public class PostService {
	
	@Autowired
	private PostRepository postRepository;
	
	@Autowired
	private UserService userService;
	
	public int addPost(int userId, String contents, MultipartFile file) {
		
		String imagePath = FileManager.saveFile(userId, file);
		
		return postRepository.insertPost(userId, contents, imagePath);
	}

	public Post getPost(int id) {
		
		return postRepository.selectPost(id);
	}
	
	public List<PostDetail> getPostList() {
		
		List<Post> postList = postRepository.selectPostList();
		
		List<PostDetail> postDetailList = new ArrayList<>();
		
		for(Post post:postList) {
			
			User user = userService.getUser(post.getUserId());
			
			PostDetail postDetail = new PostDetail();
			postDetail.setId(post.getId());
			postDetail.setContents(post.getContents());
			postDetail.setImagePath(post.getImagePath());
			postDetail.setUserId(post.getUserId());
			postDetail.setUserLoginId(user.getUserName());
			
			postDetailList.add(postDetail);
		
		}
		
		return postDetailList;
	}
}
