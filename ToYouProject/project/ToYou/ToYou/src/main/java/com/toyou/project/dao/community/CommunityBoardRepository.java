package com.toyou.project.dao.community;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.toyou.project.dto.CountDTO;
import com.toyou.project.model.CommunityBoard;

public interface CommunityBoardRepository extends JpaRepository<CommunityBoard, Integer>{

//  cmNo 별 게시판 수 카운팅 + 커뮤니티 넘버 리스트
	@Query(value= "SELECT board.communityNo as communityNo, COUNT(board.communityNo) as cnt FROM CommunityBoard board GROUP BY board.communityNo ORDER BY cnt DESC")
	public List<CountDTO> findByCountCommunityBoard();

//	커뮤니티번호로 게시글 리스트 페이징 조회
	@Query(value="SELECT board FROM CommunityBoard board WHERE communityNo = :communityNo" )
	public Page<CommunityBoard> findAllByCommunityNo(@Param("communityNo") int communityNo,Pageable pageable);

	//	커뮤니티번호로 게시글 리스트 조회 // 오버로딩
	@Query(value="SELECT board FROM CommunityBoard board WHERE communityNo = :communityNo" )
	public List<CommunityBoard> findAllByCommunityNo(@Param("communityNo") int communityNo);

//	게시판 상세보기 실행 시 조회수 업데이트
	@Modifying
	@Query(value="update CommunityBoard b set b.communityBoardViewcnt = b.communityBoardViewcnt+1 where b.communityBoardNo = :boardNo")
	public void updateByboardViewCnt(@Param("boardNo") int boardNo);
	
	
	
}
