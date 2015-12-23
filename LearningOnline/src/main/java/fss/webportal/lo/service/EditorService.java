package fss.webportal.lo.service;

import java.util.List;

import fss.webportal.lo.classes.JSONResponse;
import fss.webportal.lo.domain.TopicCategory;
import fss.webportal.lo.dto.CategoryClassDTO;

public interface EditorService {
	

	public int addCategoryText(final Object object);
	public TopicCategory persistTopicAndCategoryClass(final TopicCategory topicCategory);
	public List<CategoryClassDTO> listOfAllCategoryEntry();
}
