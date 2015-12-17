package fss.webportal.lo.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;









import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.hibernate.transform.AliasToBeanResultTransformer;
import org.springframework.stereotype.Repository;

import fss.webportal.lo.domain.MemberLogin;

@Repository
public class ApplicationDAOImpl implements ApplicationDAO{

	@PersistenceContext
	private EntityManager em;

	@SuppressWarnings("unchecked")
	public MemberLogin findByUserName(String username) {
		System.out.println("USERNAME"+username);
		List<MemberLogin> memberLogins= new ArrayList<MemberLogin>();
		memberLogins=em.createQuery("from MemberLogin where username=?").setParameter(1, username).getResultList();
		System.out.println("LIST SIZE QUERY OPERATION");
		System.out.println("LIST SIZE "+memberLogins.size());
		return memberLogins.get(0);	
	}
}
