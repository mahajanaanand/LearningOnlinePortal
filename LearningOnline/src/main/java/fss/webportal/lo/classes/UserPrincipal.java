package fss.webportal.lo.classes;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;

import fss.webportal.lo.domain.MemberLogin;

public class UserPrincipal 
{	

	public static String getCurrentUser()
	{
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String userName=( (MemberLogin)authentication.getPrincipal() ).getUsername();
		return userName;
	}
	
	public static int getCurrentUserId()
	{
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		Integer login=( (MemberLogin)authentication.getPrincipal() ).getMemberId();
		return login;
	}
	
	@SuppressWarnings({"unchecked" })
	public static String requestRedirectBasedOnRole(){
		Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>)SecurityContextHolder.getContext().getAuthentication().getAuthorities();
		String redirectUrl=null;
		int len=authorities.size();
		System.out.println("LEN : "+len);
		if(len==1){
			for (GrantedAuthority authority : authorities) {
				 String role=authority.getAuthority();
				 System.out.println("ROLE : "+role);
				 switch (role) {
				case "ROLE_EDITOR":{
					redirectUrl="/020011/dashboard";	
					break;
				}
				case "ROLE_EXPERT":{
					redirectUrl="/002011/dashboard";	
					break;
				}	
				case "ROLE_STUDENT":{
					redirectUrl="/000211/dashboard";	
					break;
				}	
					
				default:
					break;
				}
			}
			
		}else{
			
		}
		return redirectUrl;
	}
	
}

