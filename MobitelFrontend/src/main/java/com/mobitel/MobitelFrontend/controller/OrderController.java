package com.mobitel.MobitelFrontend.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mobitel.MobitelBackend.dao.ProductDAO;
import com.mobitel.MobitelBackend.model.Cart;
import com.mobitel.MobitelBackend.dao.CartDAO;

@Controller
public class OrderController {

	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	CartDAO cartDAO;
	
	@RequestMapping("/checkout")
	public String orderConfirm(HttpSession session, Model m)
	{
		String username=(String) session.getAttribute("username");
		
		List<Cart> list=cartDAO.getCartItems(username);
		
		int grandtotal=0;
		
		for(Cart cart:list)
		{
			grandtotal=grandtotal+(cart.getQuantity()*cart.getPrice());
		}
		
		m.addAttribute("grandtotal",grandtotal);
		m.addAttribute("cartitems",list);
		
		return "OrderConfirm";
		
	}
}
