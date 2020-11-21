package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import com.example.demo.service.MemberService;

import lombok.AllArgsConstructor;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	//구글 개인정보 받아오는 서비스
//	@Autowired
//	private PrincipalOauth2UserService principalOauth2UserService;

	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		// TODO Auto-generated method stub
//		super.configure(http);
		
		http.authorizeRequests()
		.mvcMatchers("/","/all/**").permitAll()
		//.mvcMatchers("/","/**").permitAll()
		//.mvcMatchers("/admin/**").hasRole("ADMIN")
		//설정중엔 모든 요청 수락가능
		//.anyRequest().authenticated();
		.anyRequest().permitAll();
		
		http.formLogin().loginPage("/login").permitAll()
		.defaultSuccessUrl("/main")
		.and()
		.oauth2Login()
		.loginPage("/login"); 
	
		http.logout()
		.logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
		.invalidateHttpSession(true);
		
		http.httpBasic();
	}


	
}






