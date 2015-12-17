package fss.webportal.lo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import fss.webportal.lo.classes.SecurityUser;
import fss.webportal.lo.domain.MemberLogin;

@Service
public class CustomUserDetailsService implements UserDetailsService{
	private final ApplicationService applicationService;
	
	@Autowired
	public CustomUserDetailsService(ApplicationService applicationService) {
		super();
		this.applicationService = applicationService;
	}
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException 
	{
		
		System.out.println("CustomUserDetailsService: "+username);
		final MemberLogin memberLogin=applicationService.findByUserName(username);
		System.out.println("MemberInfo RESULT");
		
		System.out.println("memberLogin : "+memberLogin.getPassword());
		/*if(memberLogin == null)
		{
			throw new UsernameNotFoundException("Name "+memberLogin+" not found");
		}*/
		return new SecurityUser(memberLogin);
	}
}
