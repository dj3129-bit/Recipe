package com.recipe.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

/*@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter{
	//Spring Security 6 이상에서는 WebConfiguration을 상속받는게 아니라 SecurityFilterChain을 Bean으로 등록하는 방식으로 보안 설정함(Spring boot부터 가능)
	//6 이상에서는 authorizeRequests() → authorizeHttpRequests()로 변경됨
	//5.6 이하에서만	WebSecurityConfigurerAdapter 사용 가능
	//Spring Legacy 프로젝트에서는 Spring Security 5 이하 사용해야 함
	
	//@Override
	//protected void configure(HttpSecurity http) throws Exception {
    //    http
        	.csrf().disable()  //추후 제거
            .authorizeRequests()
            	.antMatchers("/", "/login", "/resources/**").permitAll()
            	.anyRequest().permitAll()
            //추후 .authenticated()로 변경
            .and()
            .formLogin()
            	.loginPage("/login")
            	.defaultSuccessUrl("/", true)
            	.permitAll()
            .and()
            .logout()
            	.permitAll();
    }*/
	
	//@Bean
	//public UserDetailsService userDetailsService() {
	//   return new RecipeUserDetailsService(); // MyBatis 기반 사용자 정보 조회
	//}
	
	//@Bean
	//public PasswordEncoder passwordEncoder() {
	//    return new BCryptPasswordEncoder();   //비밀번호 암호화
	//}
//}
