package com.toyou.project.controller;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.toyou.project.dao.loginmain.keyword.KeywordGoogleRepository;
import com.toyou.project.model.keywordGoogle;
import com.toyou.project.model.keywordTiktok;
import com.toyou.project.model.keywordTwitch;
import com.toyou.project.model.keywordTwitter;
import com.toyou.project.service.loginmain.keyword.KeywordGoogleService;
import com.toyou.project.service.loginmain.keyword.KeywordTiktokService;
import com.toyou.project.service.loginmain.keyword.KeywordTwitchService;
import com.toyou.project.service.loginmain.keyword.KeywordTwitterService;


@Controller
public class MainController {
	
	@Autowired
	private KeywordGoogleService keywordGoogleService;
	@Autowired
	private KeywordTiktokService keywordTiktokService;
	@Autowired
	private KeywordTwitchService keywordTwitchService;
	@Autowired
	private KeywordTwitterService keywordTwitterService;
	
	
	// 
	@GetMapping({"/",""})
	public String home() {
		
		return "index";
	}
	
	
	@GetMapping("/auth/searchChannel")
	public String searchChannel() {
		return "index";
	}
	
	@GetMapping("/auth/trend")
	public String trend() {
		return "index";
	}
	
	@GetMapping("/auth/community")
	public String community() {
		return "community";
	}
	
	@GetMapping("/auth/magazine")
	public String magazine(Model model) {
		List<keywordGoogle> googleList = keywordGoogleService.SelectAllKeywordGoogle();
		List<keywordTiktok> tiktokList = keywordTiktokService.SelectAllKeywordTiktok();
		List<keywordTwitch> twitchList = keywordTwitchService.SelectAllKeywordTwitch();
		List<keywordTwitter> twitterList = keywordTwitterService.SelectAllKeywordTwitter();
		
		List<keywordTwitter> twitterTotalList = keywordTwitterService.SelectAllKeywordTwitterKind("total");
		List<keywordTwitter> twitterFamousList = keywordTwitterService.SelectAllKeywordTwitterKind("famous");
		List<keywordTwitter> twitterDurationList = keywordTwitterService.SelectAllKeywordTwitterKind("duration");
		
		model.addAttribute("googleList", googleList);
		model.addAttribute("tiktokList", tiktokList);
		model.addAttribute("twitchList", twitchList);
		model.addAttribute("twitterList", twitterList);
		
		model.addAttribute("twitterTotalList", twitterTotalList);
		model.addAttribute("twitterFamousList", twitterFamousList);
		model.addAttribute("twitterDurationList", twitterDurationList);
		
		return "index2";
	}
	
	@GetMapping("/auth/payinfo")
	public String payinfo() {
		return "payinfo";
	}
	

	
	
	@GetMapping("/auth/mypage")
	public String myPage() {
		// 개발 마무리 단계에서 /auth 삭제할 예정
		return "mypage";
	}
	
	
	@GetMapping("/auth/channelSearch")
	public String channelSearch(String keyword, Model model) {
		System.out.println("시작");
		try (Socket client = new Socket()) {
			
			// 소켓에 접속하기 위한 접속 정보를 선언한다.
			InetSocketAddress ipep = new InetSocketAddress("15.164.170.187", 9999);
			// 소켓 접속!
			
			client.connect(ipep);
			

			// 소켓이 접속이 완료되면 inputstream과 outputstream을 받는다.
			try (OutputStream sender = client.getOutputStream(); InputStream receiver = client.getInputStream();) {
				// 메시지는 for 문을 통해 10번 메시지를 전송한다.
				String msg = keyword;
				// string을 byte배열 형식으로 변환한다.
				byte[] data = msg.getBytes();
				// ByteBuffer를 통해 데이터 길이를 byte형식으로 변환한다.
				ByteBuffer b = ByteBuffer.allocate(4);
				// byte포멧은 little 엔디언이다.
				b.order(ByteOrder.LITTLE_ENDIAN);
				b.putInt(data.length);
				// 데이터 길이 전송
				sender.write(b.array(), 0, 4);
				// 데이터 전송
				sender.write(data);

				data = new byte[4];
		
				// 데이터 길이를 받는다.
				receiver.read(data, 0, 4);
				
				// ByteBuffer를 통해 little 엔디언 형식으로 데이터 길이를 구한다.
				b = ByteBuffer.wrap(data);
				b.order(ByteOrder.LITTLE_ENDIAN);
				int length = b.getInt();
				// 데이터를 받을 버퍼를 선언한다.
				data = new byte[length];
				// 데이터를 받는다.
				receiver.read(data, 0, length);
				// byte형식의 데이터를 string형식으로 변환한다.
				msg = new String(data, "UTF-8");
				// 콘솔에 출력한다.
				System.out.println(msg);
				try {
					String[] info = msg.split("!@#");
					
					model.addAttribute("title",info[0]);
					model.addAttribute("movie",info[1]);
					model.addAttribute("link",info[2]);
					model.addAttribute("banner",info[3]);
					model.addAttribute("profile",info[4]);
					model.addAttribute("explain",info[5]);
					model.addAttribute("birth",info[6]);
					model.addAttribute("sub",info[7]);
				}catch(Throwable e){
					
				}		
				System.out.println("end");
			}
		} catch (Throwable e) {
			e.printStackTrace();
		}
		
		return "channelSearch";
	}
	
	
}
