package com.syj.spgram.post;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.syj.spgram.post.service.PostService;

@RequestMapping("/post")
@Controller
public class PostController {
	
	@Autowired
	private PostService postService;
	
	@GetMapping("/feed-view")
	public String feed() {
		
		return "post/feed";
	}
	
	@GetMapping("/input-view")
	public String input() {
		
		return "post/input";
	}
	
	@GetMapping("/delete-view")
	public String delete() {
		
		return "post/delete";
	}

}
