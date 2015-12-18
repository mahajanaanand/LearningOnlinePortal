package fss.webportal.lo.service;

import fss.webportal.lo.domain.MemberInfo;
import fss.webportal.lo.domain.MemberLogin;

public interface ApplicationService {
	
	/*public MemberInfo findMemberInfoByMemberEmail(final String memberEmail);*/
	public MemberLogin findByUserName(String username);
	public MemberInfo saveMemberPersonalInfo(final MemberInfo memberInfo);
	public int findMaxMemberId();
}
