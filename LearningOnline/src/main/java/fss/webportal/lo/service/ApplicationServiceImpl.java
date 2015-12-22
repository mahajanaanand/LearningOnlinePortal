package fss.webportal.lo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fss.webportal.lo.dao.ApplicationDAO;
import fss.webportal.lo.domain.MemberInfo;
import fss.webportal.lo.domain.MemberLogin;
import fss.webportal.lo.repository.MemberInfoRepository;

@Service
public class ApplicationServiceImpl implements ApplicationService
{
	private MemberInfoRepository memberInfoRepository;
	private ApplicationDAO applicationDAO;
	@Autowired
	public ApplicationServiceImpl(final MemberInfoRepository memberInfoRepository,ApplicationDAO applicationDAO){
		this.memberInfoRepository = memberInfoRepository;
		this.applicationDAO = applicationDAO;
	}

	/*@Transactional(readOnly=true)
	public MemberInfo findMemberInfoByMemberEmail(final String memberEmail) {
		MemberInfo memberInfo=memberInfoRepository.findMemberInfoByMemberEmail(memberEmail);
		System.out.println("MemberInfo GET METHOD");
		System.out.println("Member Email: "+memberInfo.getMemberEmail());
		return memberInfo;
	}*/
	@Transactional(readOnly=true)
	public MemberLogin findByUserName(String username) {
		MemberLogin memberLogin=applicationDAO.findByUserName(username);
		System.out.println("MemberInfo GET METHOD");
		return memberLogin;
	}

	@Transactional
	public MemberInfo saveMemberPersonalInfo(MemberInfo memberInfo) {
		return memberInfoRepository.saveAndFlush(memberInfo);
	}
	@Transactional
	public int findMaxMemberId() {
		
		return applicationDAO.findMaxMemberId();
	}
}
