package com.toyou.project.dao.community;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.toyou.project.dto.CountDTO;
import com.toyou.project.model.CommunityUserInfo;

public interface communityUserInfoRepository extends JpaRepository<CommunityUserInfo, Integer>{

	// 커뮤니티 가입자 수만 추출하는 메소드
	@Query(value = "SELECT Count(com) FROM CommunityUserInfo com WHERE com.communityNo = :communityNo")
	int CountByCommunityNoAll(@Param("communityNo") int communityNo);
	
	// big 커뮤니티 번호,가입자수 추출하는 메소드
	@Query(value= "SELECT com.communityNo as communityNo,COUNT(com.communityNo) as cnt FROM CommunityUserInfo com GROUP BY com.communityNo ORDER BY cnt DESC")
	public List<CountDTO> findByCountCommunityUserInfo();

	
	

}
