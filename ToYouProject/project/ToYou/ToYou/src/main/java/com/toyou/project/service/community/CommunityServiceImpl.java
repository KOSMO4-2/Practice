package com.toyou.project.service.community;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.toyou.project.dao.community.CommunityBoardRepository;
import com.toyou.project.dao.community.CommunityRepository;
import com.toyou.project.dao.community.communityUserInfoRepository;
import com.toyou.project.dto.CountDTO;
import com.toyou.project.model.Community;
import com.toyou.project.model.CommunityUserInfo;


@Service
public class CommunityServiceImpl implements CommunityService{
	
	@Autowired
	private CommunityRepository communityRepository;

	@Autowired
	private communityUserInfoRepository communityUserInfoRepository;
	
	@Autowired
	private CommunityBoardRepository boardRepository;
	
	
	
	
	public List<Community> SelectAllCommunitybyCommunityTitle(String communityTitle){
		List<Community> communityList = communityRepository.findByCommunityTitleAll(communityTitle);
		return communityList;
	}
	
	public List<Community> SelectAllCommunitybyCommunityHostno(int hostNo){
		List<Community> communityList = communityRepository.findByCommunityHostNoAll(hostNo);
		return communityList;
	}
	
	public void communityJoin(Community community) {
		communityRepository.save(community);
	}
	
	
	//*************************************************************************************************
	// 커뮤티니 토탈 리스트 
	public Page<Community> cmTotlaList(Pageable pageable){
		Sort sort1 = Sort.by("communityNo").descending();
		pageable = PageRequest.of(0, 4,sort1);
        return communityRepository.findAll(pageable);
    }
	
	
	// 커뮤니티 가입자 수 카운트
	public int countByUserInfo(int communityNo){
		System.out.println("가입자수 레포지토리 조회할 커뮤니티넘버 : "+communityNo );
		int communityUserCnt = communityUserInfoRepository.CountByCommunityNoAll(communityNo);
		return communityUserCnt;
	}
	
	//***************************************************************************************************
	// big 커뮤니티 가입자 count
	public List<CountDTO> findByCountCommunityUserInfo(){
		return communityUserInfoRepository.findByCountCommunityUserInfo();
	}
	
	// hot 커뮤니티 게시글 카운트 리스트
	public List<CountDTO> findByCountCommunityBoard(){
		return boardRepository.findByCountCommunityBoard();
	}
	
	
	// pk로 Community 찾는 함수 
	public Community findById(int communityNo){
		Community community = communityRepository.findById(communityNo).orElseGet(()->{
			return new Community();
		});
		return community;
	}

	

	
	
	
}
