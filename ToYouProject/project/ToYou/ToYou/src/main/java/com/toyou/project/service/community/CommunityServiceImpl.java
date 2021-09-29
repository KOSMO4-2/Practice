package com.toyou.project.service.community;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.toyou.project.dao.community.CommunityRepository;
import com.toyou.project.model.Community;


@Service
public class CommunityServiceImpl implements CommunityService{
	
	@Autowired
	private CommunityRepository communityRepository;
	
	public List<Community> SelectAllCommunitybyCommunityTitle(String communityTitle){
		List<Community> communityList = communityRepository.findByCommunityTitleAll(communityTitle);
		return communityList;
	}
	
	public void communityJoin(Community community) {
		communityRepository.save(community);
	}
	
	public List<Community> SelectAllCommunitybyCommunityHostno(int communityHostno){
		List<Community> communityList = communityRepository.findByCommunityHostNoAll(communityHostno);
		return communityList;
	}
	
	
}
