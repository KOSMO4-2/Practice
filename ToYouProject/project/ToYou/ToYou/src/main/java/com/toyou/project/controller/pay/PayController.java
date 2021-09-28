package com.toyou.project.controller.pay;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.toyou.project.model.ProductBuyLog;
import com.toyou.project.model.User;
import com.toyou.project.service.pay.PayService;


@Controller
public class PayController {

	
	@Autowired
	private PayService payService;


	@GetMapping("/payMembershipForm")
	public String payMembershipForm(String gradeOfSubscriber, Model m) {
		m.addAttribute("gradeOfSubscriber", gradeOfSubscriber);
		return "payMembershipForm";
	}
	

	// 결제정보 DB에 저장하고 페이지 이동
	@PostMapping("/payGoGO")
	public String payGoGO(ProductBuyLog productBuyLog, User user, String productNo, Model model) {
		// 결제정보 DB 입력
		payService.paySuccess(productBuyLog, user);
		// 결제날짜(오늘날짜) 가져오기
		Calendar cal = Calendar.getInstance();
		cal.setTime(new Date());
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		String day = df.format(cal.getTime());
		// 다음달 날짜 계산
        cal.add(Calendar.MONTH, 1);        
        String nextday = df.format(cal.getTime());
        // 페이지에 가져갈 정보들
        model.addAttribute("productNo", productNo);
		model.addAttribute("day", day);
		model.addAttribute("nextday", nextday);
		// 페이지 이동
		return "paySuccess";
	}
	
	
	
}

