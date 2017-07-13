package com.mobitel.MobitelFrontend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mobitel.MobitelBackend.dao.SupplierDAO;
import com.mobitel.MobitelBackend.model.Supplier;

@Controller
public class SupplierController {

	@Autowired
	SupplierDAO supplierDAO;
	
	@RequestMapping("/Supplier")
	public String showSupplierPage(Model m)
	{
		System.out.println("---Supplier Page Displaying-----");
		List<Supplier> list=supplierDAO.getSupplierDetails();
		m.addAttribute("suppdetail",list);
		
		boolean flag=false;
		m.addAttribute("flag",flag);
		
		return "Supplier";
	}
	
	@RequestMapping(value="/AddSupplier",method=RequestMethod.POST)
	public String addSupplier(@RequestParam("suppname") String suppname,@RequestParam("address") String address,Model m)
	{
		System.out.println("---Add Supplier Starting-----");
		
		System.out.println(suppname+":::"+address);
		
		Supplier supplier=new Supplier();
		supplier.setSuppname(suppname);
		supplier.setAddress(address);
		
		supplierDAO.insertUpdateSupplier(supplier);
		
		List<Supplier> list=supplierDAO.getSupplierDetails();
		m.addAttribute("suppdetail",list);
		
		boolean flag=false;
		m.addAttribute("flag",flag);
		
		System.out.println("---Supplier Added----");
		return "Supplier";
	}
	
	@RequestMapping(value="/deleteSupplier/{suppid}")
	public String deleteCategory(@PathVariable("suppid") int suppid,Model m)
	{
		System.out.println("---Supplier Deleted----");
		Supplier supplier=supplierDAO.getSupplier(suppid);
		supplierDAO.deleteSupplier(supplier);
		
		List<Supplier> list=supplierDAO.getSupplierDetails();
		m.addAttribute("suppdetail",list);
		
		boolean flag=false;
		m.addAttribute("flag",flag);
		
		return "Supplier";
	}
	
	@RequestMapping(value="/updateSupplier/{suppid}")
	public String getUpdateSupplier(@PathVariable("suppid") int suppid,Model m)
	{
		System.out.println("--- Getting Supplier Object to be Updated ---");
		
		Supplier supplier=supplierDAO.getSupplier(suppid);
		m.addAttribute("supplier",supplier);
		
		List<Supplier> list=supplierDAO.getSupplierDetails();
		m.addAttribute("suppdetail",list);
		
		boolean flag=true;
		m.addAttribute("flag",flag);
		
		return "Supplier";
	}
	
	@RequestMapping(value="/UpdateSupplier",method=RequestMethod.POST)
	public String updateSupplier(@RequestParam("catid") int catid,@RequestParam("catname") String catname,@RequestParam("catdesc") String catdesc,Model m)
	{
		System.out.println("--Updating the Supplier----");

		Supplier category=new Supplier();
		category.setCatid(catid);
		category.setCatname(catname);
		category.setCatdesc(catdesc);
		
		categoryDAO.insertUpdateSupplier(category);
		
		List<Supplier> list=categoryDAO.getSupplierDetails();
		m.addAttribute("catdetail",list);
		
		boolean flag=false;
		m.addAttribute("flag",flag);
		
		return "Supplier";
	}
}
