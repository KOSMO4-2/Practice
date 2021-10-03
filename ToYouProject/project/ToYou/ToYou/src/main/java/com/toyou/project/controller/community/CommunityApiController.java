package com.toyou.project.controller.community;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.toyou.project.dto.ResponseDTO;
import com.toyou.project.model.CommunityBoard;
import com.toyou.project.service.community.CommunityBoardService;
import com.toyou.project.service.user.UserService;

@RestController
public class CommunityApiController {
	
	@Autowired
	private CommunityBoardService boardService;
	
	@Autowired
	private UserService userService;
	
	
	// 게시판 글 등록
	@PostMapping("/auth/community/boardWrite")
	public ResponseDTO<Integer> boardWrite(@RequestBody CommunityBoard board) { // username, password, email
		boardService.boardWrite(board);
		return new ResponseDTO<Integer>(HttpStatus.OK.value(), 1); // 자바오브젝트를 JSON으로 변환해서 리턴 (Jackson)
	}
	
	// 게시판 수정
	@PutMapping("/auth/community/boardModify/{communityBoardNo}")
	public ResponseDTO<Integer> modifyBoard(@PathVariable int communityBoardNo, @RequestBody CommunityBoard temp){
		
		boardService.modifyBoard(communityBoardNo,temp);
		return new ResponseDTO<Integer>(HttpStatus.OK.value(), 1);
	}
	
	// 게시판 삭제
	@DeleteMapping("/auth/community/boardDelete/{communityBoardNo}")
	public ResponseDTO<Integer> boardDelete(@PathVariable int communityBoardNo){
		boardService.boardDelete(communityBoardNo);
		return new ResponseDTO<Integer>(HttpStatus.OK.value(), 1);
	}
	

	
	
	
	
}

