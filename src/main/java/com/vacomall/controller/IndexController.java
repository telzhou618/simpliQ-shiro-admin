package com.vacomall.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 首页控制器
 * 
 * @author jameszhou
 *
 */
@Controller
public class IndexController extends AdminController {

	@RequestMapping(value = { "index", "", "/" })
	public String index(Model model) {
		model.addAttribute("name", "JamesZhou");
		return "index";
	}

	@RequestMapping("/main")
	public String main(Model model) {
		return "main";
	}
}
