package fss.webportal.lo.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;

import fss.webportal.lo.classes.LoginSuccessHandler;



@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter
{
	private final String COMMON_ROOT="/betaVersion/111111/";
	private final String EDITOR_ROOT="/betaVersion/020011/**";
	private final String ADMIN_ROOT="/betaVersion/211111/**";
	private final String STUDENT_ROOT="/betaVersion/000211/**";
	private final String EXPERT_ROOT="/betaVersion/002011/**";
	private final String SECURE_ROOT="/betaVersion/SecureOnline/";
	
	@Autowired
	private UserDetailsService userDetailsService;

	@Override
    protected void configure(AuthenticationManagerBuilder registry) throws Exception	{
		registry.userDetailsService(userDetailsService);
    }
	@Bean @Override
	protected AuthenticationManager authenticationManager() throws Exception   {
		return super.authenticationManager();
	}



	@Override
	public void configure(WebSecurity web) throws Exception  {
	    web.ignoring().antMatchers("/resources/**").antMatchers("/dynamicData/**");
	  }

	@Override
	protected void configure(HttpSecurity http) throws Exception 
	{	  
		  http
		  .exceptionHandling()
	  		.accessDeniedPage( "/403" )
	  		.and()
	  		.authorizeRequests()
	  		.antMatchers(COMMON_ROOT+"preAccessLogin**").permitAll()
		  	.antMatchers(EDITOR_ROOT).hasRole("EDITOR")
		  	.antMatchers(ADMIN_ROOT).hasRole("ADMIN")
		  	.antMatchers(STUDENT_ROOT).hasRole("STUDENT")
		  	.antMatchers(EXPERT_ROOT).hasRole("EXPERT")
	  		.and()
	  		.formLogin()
	  		.loginPage(COMMON_ROOT+"preAccessLogin")
	  		.loginProcessingUrl(COMMON_ROOT+"preAccessLogin.do")
	  		.failureUrl(COMMON_ROOT+"preAccessLogin.do?error")
	  		.successHandler(new LoginSuccessHandler())
	  		.and()
	  		.logout()
	  		.logoutUrl("/logout")
	  		.logoutSuccessUrl(COMMON_ROOT+"preAccessLogin.do?logout")
	  		.deleteCookies( "JSESSIONID" )
	  		.invalidateHttpSession( true )
	  		.and().csrf().disable()
	  		.sessionManagement()
	  		.maximumSessions(1);
	  }
}
