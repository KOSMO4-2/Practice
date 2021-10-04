package com.toyou.project.dao.community;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.toyou.project.dto.CountDTO;
import com.toyou.project.model.CommunityUserInfo;

public interface communityUserInfoRepository extends JpaRepository<CommunityUserInfo, Integer>{

	// 커뮤니티 가입자 수만 추출하는 메소드
	@Query(value = "SELECT Count(com) FROM CommunityUserInfo com WHERE com.communityNo = :communityNo AND com.communityUserinfoAuthority = 1 AND  com.communityUserinfoAuthority = 2") 
	int CountByCommunityNoAll(@Param("communityNo") int communityNo);
	
	// big 커뮤니티 번호,가입자수 추출하는 메소드
	@Query(value= "SELECT com.communityNo as communityNo,COUNT(com.communityNo) as cnt FROM CommunityUserInfo com WHERE com.communityUserinfoAuthority = 1 AND  com.communityUserinfoAuthority = 2 GROUP BY com.communityNo ORDER BY cnt DESC")
	public List<CountDTO> findByCountCommunityUserInfo();

	
	@Query(value = "select userInfo FROM CommunityUserInfo userInfo WHERE userInfo.userNo = :userNo")
	public Optional<CommunityUserInfo> findByUserNo(@Param("userNo")int userNo);
	
	// 내가 만듬
	@Query(value = "select userInfo FROM CommunityUserInfo userInfo WHERE userInfo.userNo = :userNo")
	public List<CommunityUserInfo> findByUserNoAll(@Param("userNo")int userNo);

}
