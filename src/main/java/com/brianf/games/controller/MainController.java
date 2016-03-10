package com.brianf.games.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController extends AbstractController {
	
	@RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
	public String homePage(ModelMap model) {
		model.addAttribute("greeting", "Hi, Welcome to mysite");
		return "home";
	}

	
	@RequestMapping(value = "/user", method = RequestMethod.GET)
	public String userPage(ModelMap model) {
		model.addAttribute("user", getPrincipal());
		return "user";
	}

	@RequestMapping(value = "/Access_Denied", method = RequestMethod.GET)
	public String accessDeniedPage(ModelMap model) {
		model.addAttribute("user", getPrincipal());
		return "accessDenied";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginPage() {
		return "login";
	}
	
	@RequestMapping(value = "/golf", method = RequestMethod.GET)
	public String golfPage() {
		return "golf";
	}
	@RequestMapping(value = "/memberAdmin", method = RequestMethod.GET)
	public String memberAdmin() {
		return "memberAdmin";
	}
	@RequestMapping(value = "/leaderBoard", method = RequestMethod.GET)
	public String leaderBoard() {
		return "leaderBoard";
	}
}