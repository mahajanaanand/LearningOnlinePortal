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
	

	
}

