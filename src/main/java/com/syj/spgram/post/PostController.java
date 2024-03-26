package com.syj.spgram.post;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.syj.spgram.post.domain.Post;
import com.syj.spgram.post.dto.PostDetail;
import com.syj.spgram.post.service.PostService;

import jakarta.servlet.http.HttpSession;

@RequestMapping("/post")
@Controller
public class PostController {
	
	@Autowired
	private PostService postService;
	
	@GetMapping("/feed-view")
	public String feed(
			@RequestParam("id") int id
			, Model model) {
		
		Post post = postService.getPost(id);
		
		model.addAttribute("post", post);
		
		return "post/feed";
	}
	
	@GetMapping("/list-view")
	public String postList(Model model) {
			
		List<PostDetail> postList = postService.getPostList();
		
		model.addAttribute("postList", postList);
		
		return "post/feed";
	}
	
	@GetMapping("/create-view")
	public String input() {
		
		return "post/input";
	}
	
	@GetMapping("/delete-view")
	public String delete() {
		
		return "post/delete";
	}
	
	@GetMapping("/sample-view")
	public String sample() {
		
		return "post/samplePost";
	}

}
