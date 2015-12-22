package fss.webportal.lo.dao;

import fss.webportal.lo.domain.MemberLogin;

public interface ApplicationDAO 
{
	public MemberLogin findByUserName(String username);
	public int findMaxMemberId();
}
