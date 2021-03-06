package fss.webportal.lo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fss.webportal.lo.classes.JSONResponse;
import fss.webportal.lo.dao.EditorDao;
import fss.webportal.lo.domain.TopicCategory;
import fss.webportal.lo.dto.CategoryClassDTO;
import fss.webportal.lo.repository.TopicRepository;

@Service
public class EditorServiceImpl implements EditorService{

	
	
	private EditorDao editorDao;
	private TopicRepository topicRepository;
	
	@Autowired
	public EditorServiceImpl(EditorDao editorDao, TopicRepository topicRepository) {
		super();
		this.editorDao = editorDao;
		this.topicRepository = topicRepository;
	}
	
	@Override
	@Transactional
	public int addCategoryText(Object object) {
		return editorDao.addCategoryText(object);
	}

	
	@Override
	public TopicCategory persistTopicAndCategoryClass(final TopicCategory topicCategory){
		return topicRepository.saveAndFlush(topicCategory);
	}

	@Override
	public List<CategoryClassDTO> listOfAllCategoryEntry() {
		return editorDao.listOfAllCategoryEntry();
	}

}
