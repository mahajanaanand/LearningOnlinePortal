package fss.webportal.lo.dao;

import java.util.List;

import fss.webportal.lo.classes.JSONResponse;
import fss.webportal.lo.domain.CourseCategory;
import fss.webportal.lo.domain.SubjectCategory;
import fss.webportal.lo.dto.CategoryClassDTO;

public interface EditorDao {
	public int addCategoryText(final Object object);
	public List<CategoryClassDTO> listOfAllCategoryEntry();
}
