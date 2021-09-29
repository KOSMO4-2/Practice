package com.toyou.project.service.community;

import java.util.List;

import com.toyou.project.model.Community;

public interface CommunityService {
	public List<Community> SelectAllCommunitybyCommunityTitle(String communityTitle);
	
	public void communityJoin(Community community);
	
	public List<Community> SelectAllCommunitybyCommunityHostno(int communityHostno);

}
