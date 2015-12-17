package fss.webportal.lo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fss.webportal.lo.domain.MemberInfo;
import fss.webportal.lo.repository.MemberInfoRepository;
@Service
public class RegisterMemberServiceImpl implements RegisterMemberService {
	
	@Autowired
	private MemberInfoRepository memberInfoRepository;

	public MemberInfo saveMemberPersonalInfo(MemberInfo memberInfo) {
		
		return memberInfoRepository.saveAndFlush(memberInfo);
	}

}
