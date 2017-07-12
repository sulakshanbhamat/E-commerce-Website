package com.mobitel.MobitelFrontend.controller;



import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mobitel.MobitelBackend.dao.CategoryDAO;
import com.mobitel.MobitelBackend.dao.ProductDAO;
import com.mobitel.MobitelBackend.dao.CartDAO;
import com.mobitel.MobitelBackend.model.Cart;
import com.mobitel.MobitelBackend.model.Product;

import java.util.List;

@Controller
public class CartController {

	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	CartDAO cartDAO;      //extra not sure
	
	@RequestMapping(value="/addToCart/{prodid}")
	public String addToCart(@PathVariable("prodid") int prodid,@RequestParam("quantity") int quantity,HttpSession session, Model m)
	{
		//CartDAO cartDAO;     //extra
		
		Cart cart=new Cart();
		
		String username=(String) session.getAttribute("username");
		
		cart.setCartid(1001);
		cart.setProdid(prodid);
		cart.setQuantity(quantity);
		cart.setUsername(username);
		cart.setStatus("N");
		
		Product product=productDAO.getProduct(prodid);
		cart.setProdname(product.getProdname());
		cart.setPrice(product.getPrice());
		
		cartDAO.addToCart(cart);
		
		List<Cart> list=cartDAO.getCartItems(username);
		
		m.addAttribute("cartitems",list);

		return "Cart";
	}
}
