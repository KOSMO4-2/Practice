package com.toyou.project.dao.community;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.toyou.project.model.CommunityBoardReply;

public interface CommunityBoardReplyRepository extends JpaRepository<CommunityBoardReply, Integer>{

	// 게시판 페이징 처리 된 전체 댓글 리스트
	@Query(value="SELECT boardReply FROM CommunityBoardReply boardReply WHERE boardReply.communityBoardNo = :communityBoardNo")
	public Page<CommunityBoardReply> findAllByCommunityBoardNo(@Param("communityBoardNo") int communityBoardNo,Pageable pageable);
	
	
	
}
