package com.syj.spgram.user;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.syj.spgram.user.service.UserService;

@RequestMapping("/user")
@RestController
public class UserRestController {
	
	@Autowired
	private UserService userService;
	
	@PostMapping("/join")
	public Map<String, String> join(
			@RequestParam("userName") String userName
			, @RequestParam("password") String password
			, @RequestParam("name") String name
			, @RequestParam("email") String email) {
		
		int count = userService.addUser(userName, password, name, email);
		
		Map<String, String> resultMap = new HashMap<>();
		
		if(count == 1) {
			resultMap.put("result", "success");
		} else {
			resultMap.put("result", "fail");
		}
		
		return resultMap;
	}
	
	@GetMapping("/duplicate-userName")
	public Map<String, Boolean> isDuplicateUserName(@RequestParam("userName") String userName) {
		
		Map<String, Boolean> resultMap = new HashMap<>();
		
		boolean isDuplicate = userService.isDuplicateUserName(userName);
		
		if(isDuplicate) {
			resultMap.put("isDuplicate", true);
		} else {
			resultMap.put("isDuplicate", false);
		}
		
		return resultMap;
	}
	
}
