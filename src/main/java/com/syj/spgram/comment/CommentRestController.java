package com.syj.spgram.comment;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.syj.spgram.comment.domain.Comment;
import com.syj.spgram.comment.service.CommentService;

import jakarta.servlet.http.HttpSession;

@RestController
public class CommentRestController {

	@Autowired
	private CommentService commentService;
	
	@PostMapping("/post/comment")
	public Map<String, String> CommentPost(
			@RequestParam("postId") int postId
			, @RequestParam("contents") String contents
			, HttpSession session) {
		
		int userId = (Integer)session.getAttribute("id");
		
		Comment comment = commentService.addComment(userId, postId, contents);
		
		Map<String, String> resultMap = new HashMap<>();
		
		if(comment != null) {
			resultMap.put("result", "success");
		} else {
			resultMap.put("result", "fail");
		}
		
		return resultMap;
	}
	
}
