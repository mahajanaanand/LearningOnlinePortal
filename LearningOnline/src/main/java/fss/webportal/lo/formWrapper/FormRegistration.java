package fss.webportal.lo.formWrapper;

import java.io.Serializable;

import fss.webportal.lo.domain.EducationInfo;
import fss.webportal.lo.domain.MemberInfo;
import fss.webportal.lo.domain.MemberRole;
import fss.webportal.lo.domain.OccupationInfo;


public class FormRegistration implements Serializable
{
	public FormRegistration() {
	}
	
	private static final long serialVersionUID = 1L;
	private MemberInfo memberInfo;
	private EducationInfo educationInfo;
	private OccupationInfo occupationInfo;
	private MemberRole memberRole;
	
	
	public MemberInfo getMemberInfo() {
		return memberInfo;
	}
	public void setMemberInfo(MemberInfo memberInfo) {
		this.memberInfo = memberInfo;
	}
	public EducationInfo getEducationInfo() {
		return educationInfo;
	}
	public void setEducationInfo(EducationInfo educationInfo) {
		this.educationInfo = educationInfo;
	}
	public OccupationInfo getOccupationInfo() {
		return occupationInfo;
	}
	public void setOccupationInfo(OccupationInfo occupationInfo) {
		this.occupationInfo = occupationInfo;
	}
	public MemberRole getMemberRole() {
		return memberRole;
	}
	public void setMemberRole(MemberRole memberRole) {
		this.memberRole = memberRole;
	}

}
