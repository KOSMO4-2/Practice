package com.toyou.project.service.community;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
	
	// 켜뮤니티 수정
	@Override
	@Transactional
	public void modifyCommuity(int communityNo, Community temp) {
		Community community = communityRepository.findById(communityNo).orElseThrow(()->{
			return new IllegalArgumentException("커뮤니티 찾기 실패 : 커뮤니티를 찾을 수 없습니다.");
		}); 
		System.out.println(temp.getCommunityTag());
		community.setCommunityTitle(temp.getCommunityTitle());
		community.setCommunityDescription(temp.getCommunityDescription());
		community.setCommunityIspublic(temp.getCommunityIspublic());
		community.setCommunityTag(temp.getCommunityTag());
	}
	
	// 커뮤니티 삭제
	@Transactional
	public void deleteCommunity(int communityNo) {
		Community community = communityRepository.findById(communityNo).orElseThrow(()->{
			return new IllegalArgumentException("커뮤니티 찾기 실패 : 커뮤니티를 찾을 수 없습니다.");
		}); 
		
		communityRepository.delete(community);
	};

	
	// 커뮤니티 가입 신청
	public void signUpCm(int userNo,int communityNo) {
		CommunityUserInfo userInfo = new CommunityUserInfo();
		userInfo.setCommunityNo(communityNo);
		userInfo.setUserNo(userNo);
		communityUserInfoRepository.save(userInfo);
	}
	
	// 커뮤니티 가입 상태 확인
	public CommunityUserInfo findByUserInfo(int userNo) {
		CommunityUserInfo userInfo =  communityUserInfoRepository.findByUserNo(userNo).orElseGet(()->{
			return new CommunityUserInfo();
		});
		System.out.println("가입상태 날짜 : "+userInfo.getCommunityUserinfoJoindate());
		return userInfo;
	}
	
	// 내가 만듬
	public List<CommunityUserInfo> findByUserInfoAll(int userNo) {
		List<CommunityUserInfo> userInfoAll =  communityUserInfoRepository.findByUserNoAll(userNo);			
		return userInfoAll;
	}
	
	
	
	
	
	
}
