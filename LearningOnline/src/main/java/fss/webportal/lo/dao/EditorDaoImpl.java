package fss.webportal.lo.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.hibernate.transform.AliasToBeanResultTransformer;
import org.springframework.stereotype.Repository;

import fss.webportal.lo.classes.JSONResponse;
import fss.webportal.lo.classes.UserPrincipal;
import fss.webportal.lo.domain.CategoryClass;
import fss.webportal.lo.dto.CategoryClassDTO;

@Repository
public class EditorDaoImpl implements EditorDao{
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public int addCategoryText(Object object) {
		int result=0;
		try {
			em.persist(object);
			em.flush();
			result=1;
		} catch (Exception e) {
		e.getMessage();
		}
		return result;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<CategoryClassDTO> listOfAllCategoryEntry() {
		final Session session = em.unwrap(Session.class);
		final Criteria criteria = session.createCriteria(CategoryClass.class);
				criteria.createAlias("courseCategory","courseCategory");
				criteria.createAlias("subjectCategory", "subjectCategory");
				criteria.createAlias("chapterCategory", "chapterCategory");
				criteria.createAlias("topicCategory", "topicCategory");
				criteria.setProjection(Projections.projectionList()
					.add(Projections.property("this.categoryClassId"),"categoryClassId")
					.add(Projections.property("courseCategory.courseId"),"courseId")
					.add(Projections.property("courseCategory.courseTitle"),"courseTitle")
					.add(Projections.property("subjectCategory.subjectId"),"subjectId")
					.add(Projections.property("subjectCategory.subjectTitle"),"subjectTitle")
					.add(Projections.property("chapterCategory.chapterId"),"chapterId")
					.add(Projections.property("chapterCategory.chapterTitle"),"chapterTitle")
					.add(Projections.property("topicCategory.topicId"),"topicId")
					.add(Projections.property("topicCategory.topicTitle"),"topicTitle"))
					.add(Restrictions.eq("topicCategory.memberInfo.memberId", UserPrincipal.getCurrentUserId()))
					.setResultTransformer(new AliasToBeanResultTransformer(CategoryClassDTO.class));			
					return criteria.list();
	}
	
	
	
	
	
}
