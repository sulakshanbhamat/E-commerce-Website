package com.mobitel.MobitelBackend;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class MyBeanTestCase {
       public static void main(String args[])
       {
   		System.out.println("---Test Case - AnnotationConfigApplication Context Object Created---");
   		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
   		
   		System.out.println("---Scan Method Called---");
   		context.scan("com.mobitel.MobitelBackend");
   		
   		System.out.println("---Refresh method Called---");
   		context.refresh();
   		
   		System.out.println("---My Bean Created---");
   		
   		MyBean myBean=(MyBean)context.getBean("myBean");
   		
   		myBean.display();
       }
}
