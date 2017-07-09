package com.mobitel.MobitelBackend;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class MyConfiguration {
	@Bean("myBean")
	public MyBean getMyBean()
	{
		System.out.println("--- Bean Created and Stored in IOC Container---");
		return new MyBean();
	}
}
