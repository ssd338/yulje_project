package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import com.example.demo.service.MemberService;

import lombok.AllArgsConstructor;

@Configuration
@EnableWebSecurity
@AllArgsConstructor
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	

    @Override
    public void configure(WebSecurity web) throws Exception
    {
        // static 디렉터리의 하위 파일 목록은 인증 무시 ( = 항상통과 )
        web.ignoring().antMatchers("/css/**", "/js/**", "/img/**", "/lib/**");
    }
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		// TODO Auto-generated method stub
		//super.configure(http);
//		http.csrf().disable();
		
		http.authorizeRequests()
        // 페이지 권한 설정
        .antMatchers("/admin/**").hasRole("ADMIN")
        .antMatchers("/user/myinfo").hasRole("MEMBER")
        .antMatchers("/**").permitAll()
        .and()
        
	        // 로그인 설정                
	        .formLogin()
	        .loginPage("/login")
	        .defaultSuccessUrl("/loginSuccess")
	        .permitAll()
	        .and()
	        .oauth2Login()
			.loginPage("/login") 
        .and() // 로그아웃 설정		
			.logout()
	        .logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
	        .logoutSuccessUrl("/login")
	        .invalidateHttpSession(true)
	    .and()
        // 403 예외처리 핸들링
            .exceptionHandling().accessDeniedPage("/user/denied");

		
//		http.authorizeRequests()
//		.mvcMatchers("/","/all/**").permitAll()
//		//.mvcMatchers("/","/**").permitAll()
//		//.mvcMatchers("/admin/**").hasRole("ADMIN")
//		//설정중엔 모든 요청 수락가능
//		//.anyRequest().authenticated();
//		.anyRequest().permitAll();
//		
//		http.formLogin().loginPage("/login").permitAll()
//		.defaultSuccessUrl("/main")
//		.and()
//		.oauth2Login()
//		.loginPage("/login"); 
//	
//		http.logout()
//		.logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
//		.invalidateHttpSession(true);
//		
//		http.httpBasic();
		
		
	}
	


	
}






