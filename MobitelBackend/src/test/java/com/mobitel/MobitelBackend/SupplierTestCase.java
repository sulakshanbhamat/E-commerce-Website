package com.mobitel.MobitelBackend;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.mobitel.MobitelBackend.dao.SupplierDAO;
import com.mobitel.MobitelBackend.model.Supplier;

public class SupplierTestCase {
	
	public static void main(String arg[])
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		
		context.scan("com.mobitel.MobitelBackend");
		
		context.refresh();
		
		// Inserting a Supplier Object.
		SupplierDAO supplierDAO=(SupplierDAO)context.getBean("supplierDAO");
		
		//Insertion TestCase
		
		Supplier supplier=new Supplier();
		
		supplier.setSuppname("Supplier-Rayan");
		supplier.setAddress("Borivali - I.C. Colony");

		supplierDAO.insertUpdateSupplier(supplier);		
		System.out.println("Supplier Inserted");
		
		//Retrieval TestCase
		
	  
	/*	Supplier supplier=supplierDAO.getSupplier(2);
		System.out.println("Supplier Name:"+supplier.getSuppname());
		System.out.println("Supplier Address:"+supplier.getAddress());
	*/	
	/*	//Deletion TestCase
		Supplier supplier=supplierDAO.getSupplier(2);
		supplierDAO.deleteSupplier(supplier);
		System.out.println("The Supplier Deleted");
	*/
		//Retrieving the Data
		
	/*	List<Supplier> list=supplierDAO.getSupplierDetails();
		
		for(Supplier supplier:list)
		{
			System.out.println(supplier.getSuppid()+":"+supplier.getSuppname()+":"+supplier.getAddress());
		}
	*/	
		//Update the Category
	/*	Supplier supplier=supplierDAO.getSupplier(3);
		supplier.setSuppname("Supplier-Allan");
		supplierDAO.insertUpdateSupplier(supplier);
		System.out.println("The Supplier Updated");
	*/	
	}
}
