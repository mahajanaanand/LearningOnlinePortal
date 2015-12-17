package fss.webportal.lo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import fss.webportal.lo.domain.MemberInfo;

public interface MemberInfoRepository extends JpaRepository<MemberInfo,Integer> {
	public MemberInfo findMemberInfoByMemberEmail (final String memberEmail);
}

