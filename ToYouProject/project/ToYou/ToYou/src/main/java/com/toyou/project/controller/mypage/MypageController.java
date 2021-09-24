package com.toyou.project.controller.mypage;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.toyou.project.dto.ResponseDTO;
import com.toyou.project.model.Community;
import com.toyou.project.service.community.CommunityService;


@Controller
public class MypageController {


	@Autowired
	private CommunityService communityService;

	@GetMapping("/auth/communityCreate")
	public String communityCreate() {
		return "mypageCommunityCreate";
	}

	// 커뮤니티 중복체크
	@RequestMapping(value = "/auth/communityNameCheck",method = RequestMethod.POST)
	@ResponseBody
	public String communityNameCheck(String communityName) {
		System.out.println("중복확인 할 커뮤니티 :"+communityName);
		String result = "1"; 
		List<Community> communityList = communityService.SelectAllCommunitybyCommunityTitle(communityName);
		if(communityList.size() == 0) {
			result = "0";
		}
		System.out.println("커뮤니티 조회 결과 : "+communityList.size());
		System.out.println(result);
		return result;
	}
	
	@RequestMapping(value = "/auth/createCommunity",method = RequestMethod.POST)
	@ResponseBody
	public ResponseDTO<Integer> createCommunity(@RequestBody Community community) {
		System.out.println("태그 검사 타이틀 : " +community.getCommunityTitle());
		System.out.println("태그 검사 : " +community.getCommunityTag());
		communityService.communityJoin(community);
		return new ResponseDTO<Integer>(HttpStatus.OK.value(), 1);
	}

}
