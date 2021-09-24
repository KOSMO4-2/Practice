package com.toyou.project.controller.community;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CommunityController {

	@GetMapping("/auth/community/cmBoardWriteForm")
	public String communityForm() {
		System.out.println("cmBoardWriteForm 이동");
		return "community/cmBoardWriteForm";
		
	}
	
}
