package com.mobitel.MobitelFrontend.controller;

import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;


import com.mobitel.MobitelBackend.dao.ProductDAO;
import com.mobitel.MobitelBackend.model.Product;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
    
	@Autowired
	ProductDAO productDAO;
	
	@RequestMapping("/login_success")
	public String loginSuccess(HttpSession session,Model m)
	{
		System.out.println("----Login successful----");
		//return "AdminHome";
		
        System.out.println("--Login Successful---");
		
		String page=null;
		
		boolean loggedIn=true;
		
		//Retrieving the username
		String username = SecurityContextHolder.getContext().getAuthentication().getName();
		session.setAttribute("username",username);
		session.setAttribute("loggedIn",loggedIn);
		
		//Retrieving the Role
		Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) SecurityContextHolder.getContext().getAuthentication().getAuthorities();
		
		for(GrantedAuthority role:authorities)
		{
			System.out.println("---Role:"+role.getAuthority()+" User Name:"+username+"----");
			if(role.getAuthority().equals("Admin"))
			{
				page="AdminHome";
			}
			else
			{
				List<Product> prodlist=productDAO.getProductDetails();
				m.addAttribute("prodlist",prodlist);
				
				page="UserHome";
			}
		}
		
		return page;

	}
}
