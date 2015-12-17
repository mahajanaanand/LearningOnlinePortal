package fss.webportal.lo.classes;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Set;

import fss.webportal.lo.domain.MemberLogin;
import fss.webportal.lo.domain.MemberRole;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;


public class SecurityUser extends MemberLogin implements UserDetails
{
	private static final long serialVersionUID = 1L;
	public SecurityUser(MemberLogin memberLogin) {
		System.out.println("Security Check : 5");
		if(memberLogin != null)
		{
			this.setMemberId(memberLogin.getMemberId());
			this.setUsername(memberLogin.getUsername());
			this.setPassword(memberLogin.getPassword());
			this.setMemberRoles(memberLogin.getMemberRoles());
			
			System.out.println(memberLogin.getMemberId());
			System.out.println(memberLogin.getUsername());
			System.out.println(memberLogin.getPassword());
			System.out.println(memberLogin.getMemberRoles());
		}		
	}
	
	public Collection<? extends GrantedAuthority> getAuthorities() {	
		Collection<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		Set<MemberRole> memberRoles = this.getMemberRoles();
		System.out.println("Security Check : 6");
		if(memberRoles != null)
		{
			for (MemberRole role : memberRoles) {
				SimpleGrantedAuthority authority = new SimpleGrantedAuthority(role.getRoleTitle());
				authorities.add(authority);
			}
		}
		System.out.println("Security Check : 7");
		return authorities;
	}
	public String getPassword() {
		return super.getPassword();
	}
	public String getUsername() {
		return super.getUsername();
	}
	public boolean isAccountNonExpired() {
		return true;
	}
	public boolean isAccountNonLocked() {
		return true;
	}


	public boolean isCredentialsNonExpired() {
		return true;
	}

	public boolean isEnabled() {
		return true;
	}
	
}

