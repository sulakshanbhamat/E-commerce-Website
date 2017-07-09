package com.mobitel.MobitelBackend;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.mobitel.MobitelBackend.dao.UserDAO;
import com.mobitel.MobitelBackend.model.User;

public class UserTestCase {
     
	public static void main(String arg[])
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		
		context.scan("com.mobitel.MobitelBackend");
		
		context.refresh();
		
		// Inserting a User Object.
		UserDAO userDAO=(UserDAO)context.getBean("userDAO");
		
		//Insertion TestCase
		
		User user=new User();
		
		user.setUsername("knefn");
		user.setPassword("fknf");
		user.setCustname("mfoefm");
		user.setRole("Guest");
		user.setEmail("ef f f@gmail.com");
		user.setEnabled(true);
		user.setCustaddress("dcdjcnkjdc");

		userDAO.insertUpdateUser(user);		
		System.out.println("Username Inserted");
		
		//Retrieval TestCase
	/*	
		User user=userDAO.getUser(1);
		System.out.println("User Name:"+user.getUsername());
		System.out.println("User Password:"+user.getPassword());
	*/	
	/*	//Deletion TestCase
		User user=userDAO.getUser(4);
		userDAO.deleteUser(user);
		System.out.println("The Username Deleted");
	*/
		//Retrieving the Data
		
		List<User> list=userDAO.getUserDetails();
	/*	
		for(User user:list)
		{
			System.out.println(user.getUserid()+":"+user.getUsername()+":"+user.getPassword());
		}
	*/	
		//Update the Category
	/*	User user=userDAO.getUser(3);
		user.setUsername("priyanka");
		userDAO.insertUpdateUser(user);
		System.out.println("The Username Updated");
	*/	
	}
}
