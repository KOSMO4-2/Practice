package com.toyou.project.controller.administrator;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {

	
	@GetMapping("/admin_index")
	public String admin_index() {
		return "administrator/admin_index";
	}

	
	
	@GetMapping("/admin_chart")
	public String admin_chart() {
		return "administrator/admin_chart";
	}

	
	
	@GetMapping("/admin_empty")
	public String admin_empty() {
		return "administrator/admin_empty";
	}

	
	
	@GetMapping("/admin_form")
	public String admin_form() {
		return "administrator/admin_form";
	}

	
	
	@GetMapping("/admin_tab-panel")
	public String admin_tab_panel() {
		return "administrator/admin_tab-panel";
	}

	
	
	@GetMapping("/admin_table")
	public String admin_table() {
		return "administrator/admin_table";
	}

	
	
	@GetMapping("/admin_ui-elements")
	public String admin_ui_elements() {
		return "administrator/admin_ui-elements";
	}

	




}
