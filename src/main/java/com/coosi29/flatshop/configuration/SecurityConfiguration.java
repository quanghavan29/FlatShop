package com.coosi29.flatshop.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

	@Autowired
	UserDetailsService userDetailsService;

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailsService).passwordEncoder(new BCryptPasswordEncoder());
	}
	

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf().disable().cors().disable().authorizeRequests().antMatchers("/admin/**").hasRole("ADMIN")
				.anyRequest().permitAll().and().exceptionHandling().accessDeniedPage("/logout");

		http.formLogin().loginPage("/logout").loginProcessingUrl("/login").usernameParameter("account")
				.passwordParameter("password").defaultSuccessUrl("/home")
				.failureUrl("/login?err=Looks like either your account. Wanna try again?").permitAll();
		http.logout().logoutSuccessUrl("/login").permitAll();
	}

}
