package com.example.demo.service;

import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import com.example.demo.vo.MemberVo;

import com.example.demo.db.MemberManager;


@Service
public class MemberService implements UserDetailsService {

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		System.out.println("사용자 로그인 처리!!");
		MemberVo m = MemberManager.selectMember(username);


		if(m == null) {
			System.out.println("로그인 실패");
			throw new UsernameNotFoundException(username);
		}
		return User.builder()
				.username(username)
				.password(m.getPwd())
				.roles(m.getRoles()).build();
	}

}