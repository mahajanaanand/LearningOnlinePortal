package fss.webportal.lo.service;

import java.util.List;

import fss.webportal.lo.classes.JSONResponse;
import fss.webportal.lo.domain.MemberInfo;
import fss.webportal.lo.domain.MemberLogin;

public interface ApplicationService {
	
	/*public MemberInfo findMemberInfoByMemberEmail(final String memberEmail);*/
	public MemberLogin findByUserName(String username);
	public MemberInfo saveMemberPersonalInfo(final MemberInfo memberInfo);
	public int findMaxMemberId();
	public <T> List<JSONResponse> requestCourseCategory(Class<T> className,String propertyId,String propertyTitle);
	public <T> List<JSONResponse> requestAllCategory(Class<T> className,String alias,String propertyId,String propertyTitle,String equalProperty,int whereId);
}
