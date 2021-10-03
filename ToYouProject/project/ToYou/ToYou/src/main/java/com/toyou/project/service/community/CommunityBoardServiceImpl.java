package com.toyou.project.service.community;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.toyou.project.dao.community.CommunityBoardRepository;
import com.toyou.project.model.CommunityBoard;


@Service
public class CommunityBoardServiceImpl implements CommunityBoardService{
	
	@Autowired
	private CommunityBoardRepository boardRepository;
	

	// 게시판 작성
	public void boardWrite(CommunityBoard board) {
		boardRepository.save(board);
	}


	// 게시판 리스트 조회
	@Override
	public List<CommunityBoard> findByCmNo(int communityNo) {
		List<CommunityBoard> boards = boardRepository.findAllByCommunityNo(communityNo);
		return boards;
	}

	// 게시판 단일 조회
	@Override
	public CommunityBoard findById(int boardNo) {

		CommunityBoard board = boardRepository.findById(boardNo).orElseGet(()->{
			return new CommunityBoard();
		});
		return board;
	}


	// 게시판 조회수 업데이트 
	@Override
	@Transactional
	public void updateByboardViewCnt(int boardNo) {
		boardRepository.updateByboardViewCnt(boardNo);
	}

	// 게시판 글 수정
	@Override
	@Transactional
	public void modifyBoard(int communityBoardNo, CommunityBoard temp) {
		CommunityBoard board = boardRepository.findById(communityBoardNo).orElseThrow(()->{
			return new IllegalArgumentException("글 찾기 실패 : 게시글을 찾을 수 없습니다.");
		}); // 영속화 완료
		
		board.setCommunityBoardTitle(temp.getCommunityBoardTitle());
		board.setCommunityBoardContent(temp.getCommunityBoardContent());
		board.setCommunityBoardImgname(temp.getCommunityBoardImgname());
		board.setCommunityBoardIspublic(temp.getCommunityBoardIspublic());
		
		
	}


	// 게시판 글 삭제
	@Override
	@Transactional
	public void boardDelete(int communityBoardNo) {
		CommunityBoard board = boardRepository.findById(communityBoardNo).orElseThrow(()->{
			return new IllegalArgumentException("글 찾기 실패 : 게시글을 찾을 수 없습니다.");
		});
		boardRepository.delete(board);
	}
	
	
	
	
	
}
