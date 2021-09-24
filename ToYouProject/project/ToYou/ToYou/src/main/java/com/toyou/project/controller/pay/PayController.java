package com.toyou.project.controller.pay;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.toyou.project.dto.ResponseDTO;
import com.toyou.project.model.ProductBuyLog;
// import com.toyou.project.service.pay.PayService;




@Controller
public class PayController {

	
/*	
	
	@Autowired
	private PayService payService;

*/	
	
	@GetMapping("/payMembershipForm")
	public String payMembershipForm(String gradeOfSubscriber, Model m) {
		m.addAttribute("gradeOfSubscriber", gradeOfSubscriber);
		return "payMembershipForm";
	}
	


	@GetMapping("/paySuccess")
	public String paySuccess() {
		return "paySuccess";
	}
	
	/*
	@PostMapping("/paySuccess")
	public String save(@RequestBody ProductBuyLog productBuyLog){
		payService.payMembership(productBuyLog);
		return "paySuccess";
	}
	*/


	
	
}

