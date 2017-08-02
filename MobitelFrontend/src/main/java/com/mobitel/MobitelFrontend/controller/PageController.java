package com.mobitel.MobitelFrontend.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {

	@RequestMapping("/About-us")
	public String showAboutUs()
	{
		return "About-us";
	}
	@RequestMapping("/ContactUs")
	public String showContactUs()
	{
		return "ContactUs";
	}
	@RequestMapping("/AdminHome")
	public String showAdminHome()
	{
		return "AdminHome";
	}
	
	@RequestMapping("/login")
	public String showLoginPage()
	{
		return "Login";
	}
	@RequestMapping("/UserHome")
	public String showUserHomePage()
	{
		return "UserHome";
	}
	@RequestMapping("/Home")
	public String showHomePage()
	{
		return "Home";
	}
	@RequestMapping("/OnePlus")
	public String showOnePlusPage()
	{
		return "OnePlus";
	}		
}
