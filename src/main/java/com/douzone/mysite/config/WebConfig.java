package com.douzone.mysite.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.context.annotation.Import;

import com.douzone.config.web.FileUploadConfig;
import com.douzone.config.web.MVCConfig;
import com.douzone.config.web.MessagesConfig;
import com.douzone.config.web.SecurityConfig;

@Configuration
@ComponentScan(value= {"com.douzone.mysite.controller","com.douzone.mysite.exception"})	//web.xml에서 context:component-scan 과 같은 역할을 한다.
@Import(value={MVCConfig.class, SecurityConfig.class, MessagesConfig.class, FileUploadConfig.class})
public class WebConfig {
	//명시해서 하는 설정
	//.xml 명시해서 하는 설정이 java에서는 어떻게 하는가?
	
	
}
