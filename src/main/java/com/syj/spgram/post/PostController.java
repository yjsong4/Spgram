package com.syj.spgram.post;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/post")
@Controller
public class PostController {
	
	@GetMapping("/feed-view")
	public String feed() {
		
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

}
