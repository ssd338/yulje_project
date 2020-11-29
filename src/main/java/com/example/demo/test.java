package com.example.demo;

import org.springframework.security.crypto.factory.PasswordEncoderFactories;

import com.example.demo.sms.BitSms;

public class test {

	public static void main(String[] args) {
//		String re = BitSms.sendMsg("01040290290", "test");
//		System.out.println(re);
		String pwd = PasswordEncoderFactories.createDelegatingPasswordEncoder().encode("admin");
		
		System.out.println(pwd);
	}
}
