package com.toyou.project.service.community;

import java.util.List;

import com.toyou.project.model.CommunityBoard;

public interface CommunityBoardService {

	public void boardWrite(CommunityBoard board);
	
	public void modifyBoard(int communityBoardNo,CommunityBoard temp);

	public void boardDelete(int communityBoardNo);
	
	public List<CommunityBoard> findByCmNo(int communityNo);
	
	public CommunityBoard findById(int boardNo);
	
	public void updateByboardViewCnt(int boardNo);
	
	
	
}



