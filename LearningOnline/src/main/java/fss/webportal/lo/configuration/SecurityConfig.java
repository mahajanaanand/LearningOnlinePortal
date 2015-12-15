package fss.webportal.lo.configuration;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter
{
	private final String COMMON_ROOT="/betaVersion/111111/";
	private final String SECURE_ROOT="/SecureLearningOnline/";
	/*@Autowired
	private UserDetailsService userDetailsService;

	@Override
    protected void configure(AuthenticationManagerBuilder registry) throws Exception	{
		registry.userDetailsService(userDetailsService);
    }
	
	@Bean @Override
	protected AuthenticationManager authenticationManager() throws Exception   {
		return super.authenticationManager();
	}*/



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
		  		.antMatchers(COMMON_ROOT+"preAccessLogin").permitAll()
		  		.antMatchers(SECURE_ROOT+"/10**OES**").hasRole("ADMIN")
		  		.antMatchers(SECURE_ROOT+"/10**OES**").hasRole("SELLER")
		  		.and()
		  		.formLogin()
		  		.loginPage(COMMON_ROOT+"loginTRYONCE")
		  		.loginProcessingUrl(COMMON_ROOT+"loginTRYONCE.do")
		  		.defaultSuccessUrl(SECURE_ROOT+"1000OES_dashboard" )
		  		.failureUrl(COMMON_ROOT+"loginTRYONCE.do?error")
		  		.and()
		  		.logout()
		  		.logoutUrl(SECURE_ROOT+"logout")
		  		.logoutSuccessUrl(COMMON_ROOT+"loginTRYONCE.do?logout")
		  		.deleteCookies( "JSESSIONID" )
		  		.invalidateHttpSession( true )
		  		.and().csrf().disable()
		  		.sessionManagement()
		  		.maximumSessions(1);
	  }
}
