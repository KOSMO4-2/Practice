package com.toyou.project.controller.community;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.toyou.project.dto.CountDTO;
import com.toyou.project.model.ChannelOwner;
import com.toyou.project.model.Community;
import com.toyou.project.model.CommunityBoard;
import com.toyou.project.model.User;
import com.toyou.project.service.community.CommunityBoardService;
import com.toyou.project.service.community.CommunityService;
import com.toyou.project.service.mypage.MypageService;
import com.toyou.project.service.user.UserService;

@Controller
public class CommunityController {

	@Autowired
	private CommunityService communityService;
	
	@Autowired
	private CommunityBoardService boardService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private MypageService myPageService;
	
	
//	커뮤니티 수정폼 이동
	@GetMapping("/auth/community/cmModifyForm")
	public String cmModifyForm(HttpServletRequest request, Model model) {
		String communityNo = request.getParameter("communityNo");
		Community community = communityService.findById(Integer.parseInt(communityNo));
//		ArrayList<String> tagVal = new ArrayList<String>();
//		System.out.println("태그가 가져오는 값 확인 : "+community.getCommunityTag());
//		System.out.println("태그가 가져오는 값 isempty : "+community.getCommunityTag().isEmpty());
//		if(!(community.getCommunityTag().isEmpty())) {			
//			String[] tmp = community.getCommunityTag().trim().split(",");
//			System.out.println("tmp 사이즈 확인 :" + tmp.length);
//			for(int i = 0;i<tmp.length; i++	) {
//				System.out.println("tmp에 담긴 배열 확인 :" + tmp[i]);
//				tagVal.add(tmp[i].trim());
//				System.out.println(tagVal.get(i));
//			}
//		}
//		System.out.println("태그가 없나 : " + tagVal.isEmpty());
//		System.out.println("태그 개수 확인 : " + tagVal.size());
		model.addAttribute("community", community);
//		model.addAttribute("tagVal", tagVal);
//		
		return "community/cmModifyForm";
	}
	
	
	
//	게시글 작성폼 이동
	@GetMapping("/auth/community/cmBoardWriteForm")
	public String communityForm(HttpServletRequest request, Model model) {
		String communityNo = request.getParameter("communityNo");
		model.addAttribute("communityNo", communityNo);
//		
		return "community/cmBoardWriteForm";
		
	}
	
//	게시글 수정폼 이동
	@GetMapping("/auth/community/boardModifyForm")
	public String boardModifyForm(HttpServletRequest request, Model model) {
		String boardNo = request.getParameter("communityBoardNo");
		CommunityBoard board = boardService.findById(Integer.parseInt(boardNo));
		Community community = communityService.findById(board.getCommunityNo());
				
		model.addAttribute("board", board);
		model.addAttribute("community", community);
		
		return "community/boardModifyForm";
		
	}
	
	
	
//  커뮤니티 상세보기 페이지 이동	
	@RequestMapping("/auth/community/community")
	public String community(HttpServletRequest request, Model model) {
		// ==================================================================================
		// 커뮤니티 호스트 정보 
		String communityNo = request.getParameter("communityNo");
		int JoinCnt = communityService.countByUserInfo(Integer.parseInt(communityNo));
		Community community = communityService.findById(Integer.parseInt(communityNo));
		User user = userService.userfindById(community.getCommunityHostno());
		ChannelOwner channelInfo = myPageService.findMyChannel(user.getUserNo());
		
		model.addAttribute("channelInfo", channelInfo);
		model.addAttribute("community", community);
		model.addAttribute("user", user);
		model.addAttribute("JoinCnt", JoinCnt);
		
		
		//====================================================================================
		// 커뮤니티 게시판 정보
		List<CommunityBoard> boards = boardService.findByCmNo(Integer.parseInt(communityNo));
		List<User> boardWriter = new ArrayList<User>();
		for(CommunityBoard board : boards) {
			int userNo = board.getUserNo();
			User userB = userService.userfindById(userNo);
			boardWriter.add(userB);
		}
		model.addAttribute("boards", boards);
		model.addAttribute("boardWriter", boardWriter);
		
		return "/community/community";
	}

	
//	커뮤니티 종합 페이지 이동
	@GetMapping("/auth/communityTotal")
	public String cmTotalList(Model model,Pageable pageable) {		

		// **************************************************************************************************
		// big 커뮤니티 리스트
		List<String> bigcommunityNo = new ArrayList<String>();
		List<String> bigcmTitle = new ArrayList<String>();
		List<String> bigchannelName = new ArrayList<String>();
		List<String> bigchannelImg = new ArrayList<String>();
		List<String> bigcmDescription = new ArrayList<String>();
		List<String> biguserJoinCnt = new ArrayList<String>();
		List<CountDTO> cntUserInfo = communityService.findByCountCommunityUserInfo();
		if(cntUserInfo.size() > 0) {
//			System.out.println("전체 커뮤니티 리스트 받아옴 : " + cmTotalList.getSize());
			// 설명 ,채널명, 채널이미지, 가입자 수 
			for(int i=0; i<cntUserInfo.size(); i++) {
				System.out.println("big커뮤니티 리스트 조회 시작");
				bigcommunityNo.add(Integer.toString(cntUserInfo.get(i).getCommunityNo()));
				biguserJoinCnt.add(Integer.toString(cntUserInfo.get(i).getCnt()));
				Community community = communityService.findById(cntUserInfo.get(i).getCommunityNo());
				bigcmTitle.add(community.getCommunityTitle());
				bigcmDescription.add(community.getCommunityDescription());
				User user = userService.userfindById(community.getCommunityHostno());
				bigchannelName.add(user.getUserChannelName());
//				System.out.println("4 :"+user.getUserChannelName());
				bigchannelImg.add(user.getUserChannelImg());
			}
			// 총 페이지수
			model.addAttribute("bigcommunityNo", bigcommunityNo);
			model.addAttribute("bigchannelName", bigchannelName);
			model.addAttribute("bigchannelImg", bigchannelImg);
			model.addAttribute("bigcmTitle", bigcmTitle);
			model.addAttribute("bigcmDescription", bigcmDescription);
			model.addAttribute("biguserJoinCnt", biguserJoinCnt);
			
		}else if(cntUserInfo.size() <= 4) {
			for(int i=0; i<cntUserInfo.size(); i++) {
				System.out.println("big커뮤니티 리스트 조회 시작");
				bigcommunityNo.add(Integer.toString(cntUserInfo.get(i).getCommunityNo()));
				biguserJoinCnt.add(Integer.toString(cntUserInfo.get(i).getCnt()));
				Community community = communityService.findById(cntUserInfo.get(i).getCommunityNo());
				bigcmTitle.add(community.getCommunityTitle());
				bigcmDescription.add(community.getCommunityDescription());
				User user = userService.userfindById(community.getCommunityHostno());
				bigchannelName.add(user.getUserChannelName());
//				System.out.println("4 :"+user.getUserChannelName());
				bigchannelImg.add(user.getUserChannelImg());
			}
			// 총 페이지수
			model.addAttribute("bigcommunityNo", bigcommunityNo);
			model.addAttribute("bigchannelName", bigchannelName);
			model.addAttribute("bigchannelImg", bigchannelImg);
			model.addAttribute("bigcmTitle", bigcmTitle);
			model.addAttribute("bigcmDescription", bigcmDescription);
			model.addAttribute("biguserJoinCnt", biguserJoinCnt);
		}
		// **************************************************************************************************
		// hot 커뮤니티 리스트
		List<String> hotcommunityNo = new ArrayList<String>();
		List<String> hotcmTitle = new ArrayList<String>();
		List<String> hotchannelName = new ArrayList<String>();
		List<String> hotchannelImg = new ArrayList<String>();
		List<String> hotcmDescription = new ArrayList<String>();
		List<String> hotuserJoinCnt = new ArrayList<String>();
		// 게시판 cmNo별 카운트+리스트
		List<CountDTO> cntBoard = communityService.findByCountCommunityBoard();
		if(cntBoard.size() > 0) {
			System.out.println("핫커뮤니티 리스트 조회 시작");
			// 설명 ,채널명, 채널이미지, 가입자 수 
			for(int i=0; i<cntBoard.size(); i++) {
				hotcommunityNo.add(Integer.toString(cntBoard.get(i).getCommunityNo()));
//				hotuserJoinCnt.add(Integer.toString(cntBoard.get(i).getCnt()));
				Community community = communityService.findById(cntBoard.get(i).getCommunityNo());
				int joinCnt = communityService.countByUserInfo(community.getCommunityNo());
				hotuserJoinCnt.add(Integer.toString(joinCnt));
				hotcmTitle.add(community.getCommunityTitle());
				hotcmDescription.add(community.getCommunityDescription());
				User user = userService.userfindById(community.getCommunityHostno());
				hotchannelName.add(user.getUserChannelName());
				hotchannelImg.add(user.getUserChannelImg());
			}
			// 총 페이지수
			model.addAttribute("hotcommunityNo", hotcommunityNo);
			model.addAttribute("hotchannelName", hotchannelName);
			model.addAttribute("hotchannelImg", hotchannelImg);
			model.addAttribute("hotcmTitle", hotcmTitle);
			model.addAttribute("hotcmDescription", hotcmDescription);
			model.addAttribute("hotuserJoinCnt", hotuserJoinCnt);
			
		}else if(cntBoard.size() <= 4) {
			for(int i=0; i<cntBoard.size(); i++) {
				hotcommunityNo.add(Integer.toString(cntBoard.get(i).getCommunityNo()));
				hotuserJoinCnt.add(Integer.toString(cntBoard.get(i).getCnt()));
				Community community = communityService.findById(cntBoard.get(i).getCommunityNo());
				hotcmTitle.add(community.getCommunityTitle());
				hotcmDescription.add(community.getCommunityDescription());
				User user = userService.userfindById(community.getCommunityHostno());
				hotchannelName.add(user.getUserChannelName());
				hotchannelImg.add(user.getUserChannelImg());
			}
			// 총 페이지수
			model.addAttribute("hotcommunityNo", hotcommunityNo);
			model.addAttribute("hotchannelName", hotchannelName);
			model.addAttribute("hotchannelImg", hotchannelImg);
			model.addAttribute("hotcmTitle", hotcmTitle);
			model.addAttribute("hotcmDescription", hotcmDescription);
			model.addAttribute("hotuserJoinCnt", hotuserJoinCnt);
		}
		
		
		
		// **************************************************************************************************
		// 전체 커뮤니티 리스트 
			List<String> communityNo = new ArrayList<String>();
			List<String> cmTitle = new ArrayList<String>();
			List<String> channelName = new ArrayList<String>();
			List<String> channelImg = new ArrayList<String>();
			List<String> cmDescription = new ArrayList<String>();
			List<String> userJoinCnt = new ArrayList<String>();
			Page<Community> cmTotalList = communityService.cmTotlaList(pageable);
			List<Community> community = cmTotalList.getContent();
			int totalPage = cmTotalList.getTotalPages();
			if(community.size() > 0) {
				System.out.println("new 커뮤니티 리스트 조회 시작");
				// 설명 ,채널명, 채널이미지, 가입자 수 
				for(int i=0; i<community.size(); i++) {
					Community tmpCm = community.get(i);
					communityNo.add(Integer.toString(tmpCm.getCommunityNo()));
//					System.out.println("1 :"+community.getCommunityNo());
					cmDescription.add(tmpCm.getCommunityDescription());
//					System.out.println("2 :"+community.getCommunityDescription());
					cmTitle.add(tmpCm.getCommunityTitle());
//					System.out.println("3 :"+community.getCommunityTitle());
					User user = userService.userfindById(tmpCm.getCommunityHostno());
					channelName.add(user.getUserChannelName());
//					System.out.println("4 :"+user.getUserChannelName());
					channelImg.add(user.getUserChannelImg());
//					System.out.println("5 :"+user.getUserChannelImg());
					int cmUserInfo = communityService.countByUserInfo(tmpCm.getCommunityNo());
					if(cmUserInfo==0) {
						userJoinCnt.add("0");
//						System.out.println("가입자 없을경우 들어오는");
					}else {
						userJoinCnt.add(Integer.toString(cmUserInfo));
//						System.out.println("가입자 있을경우 들어오는");
					}
				}
//				System.out.println("for 문 빠져나오는지 확인");
				// 총 페이지수
				model.addAttribute("communityNo", communityNo);
				model.addAttribute("channelName", channelName);
				model.addAttribute("cmTitle", cmTitle);
				model.addAttribute("channelImg", channelImg);
				model.addAttribute("cmDescription", cmDescription);
				model.addAttribute("userJoinCnt", userJoinCnt);
				model.addAttribute("totalPage", totalPage);
				model.addAttribute("previous", pageable.previousOrFirst().getPageNumber());
				model.addAttribute("next", pageable.next().getPageNumber());	
				
			}

	    
		return "communityTotal";
	}
	
	
	// 커뮤니티 게시판 상세보기
	@GetMapping("/auth/community/boardView")
	public String boardView(HttpServletRequest request, Model model) {
		String boardNo = request.getParameter("communityBoardNo");
		String communityNo = request.getParameter("communityNo");
		Community community = communityService.findById(Integer.parseInt(communityNo));
		CommunityBoard board =  boardService.findById(Integer.parseInt(boardNo));
		boardService.updateByboardViewCnt(board.getCommunityBoardNo());
		User user = userService.userfindById(board.getUserNo());
		model.addAttribute("community",community);
		model.addAttribute("board",board);
		model.addAttribute("user",user);
		return "community/boardView";
	}
	
	// 커뮤니티 멤버 관리폼 이동
	@GetMapping("/auth/community/cmUserInfoModifyForm")
	public String cmUserInfoModifyForm(HttpServletRequest request) {
		int communityNo = Integer.parseInt(request.getParameter("communityNo"));
		return "community/cmUserInfoModifyForm";
	}
	
}
