package fss.webportal.lo.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.hibernate.transform.AliasToBeanResultTransformer;
import org.springframework.stereotype.Repository;

import fss.webportal.lo.classes.JSONResponse;
import fss.webportal.lo.domain.MemberInfo;
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
	public int findMaxMemberId() {
		
	     Query query=em.createNativeQuery("select MAX(PK_mi_member_id) from os_member_info");
	     int maxId=(Integer)query.getSingleResult();
	     return maxId;
	}
	@Override
	@SuppressWarnings("unchecked")
	public <T> List<JSONResponse> requestCourseCategory(Class<T> className,String propertyId, String propertyTitle) {
		final Session session = em.unwrap(Session.class);
		final Criteria criteria = session.createCriteria(className);
				criteria.setProjection(Projections.projectionList()
				.add(Projections.property(propertyId),"responseId")
				.add(Projections.property(propertyTitle),"responseTitle"))
				.setResultTransformer(new AliasToBeanResultTransformer(JSONResponse.class));			
				return criteria.list();
	}
	@SuppressWarnings("unchecked")
	@Override
	public <T> List<JSONResponse> requestAllCategory(Class<T> className,String alias,String propertyId,String propertyTitle,String equalProperty,int whereId){
		final Session session = em.unwrap(Session.class);
		final Criteria criteria = session.createCriteria(className);
				criteria.createAlias(alias, alias);
				criteria.setProjection(Projections.projectionList()
				.add(Projections.property(propertyId),"responseId")
				.add(Projections.property(propertyTitle),"responseTitle"))
				.add(Restrictions.eq(equalProperty, whereId))
				.setResultTransformer(new AliasToBeanResultTransformer(JSONResponse.class));			
				return criteria.list();
	}
	
}
