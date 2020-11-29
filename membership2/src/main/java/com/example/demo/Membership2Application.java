package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.example.demo.db.MemberManager;
import com.example.demo.vo.MemberVo;

@SpringBootApplication
public class Membership2Application {

	public static void main(String[] args) {
		SpringApplication.run(Membership2Application.class, args);
		//MemberManager.insert(new MemberVo(2,"yd",PasswordEncoderFactories.createDelegatingPasswordEncoder().encode("dudeo1234%"),"영대","900912-1111111","010-9644-9912","kyd900@naver.com","우리집","user","o","o"));
	}
//	
	@Bean
	public PasswordEncoder passwordEncoder() {
	    return PasswordEncoderFactories.createDelegatingPasswordEncoder();
	}
}
