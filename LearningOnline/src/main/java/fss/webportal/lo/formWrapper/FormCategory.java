package fss.webportal.lo.formWrapper;

import fss.webportal.lo.domain.CategoryClass;
import fss.webportal.lo.domain.ChapterCategory;
import fss.webportal.lo.domain.CourseCategory;
import fss.webportal.lo.domain.SubjectCategory;
import fss.webportal.lo.domain.TopicCategory;

public class FormCategory {
	
	private CourseCategory courseCategory;
	private SubjectCategory subjectCategory;
	private ChapterCategory chapterCategory;
	private TopicCategory topicCategory;
	private CategoryClass categoryClass;
	public CourseCategory getCourseCategory() {
		return courseCategory;
	}
	public void setCourseCategory(CourseCategory courseCategory) {
		this.courseCategory = courseCategory;
	}
	public SubjectCategory getSubjectCategory() {
		return subjectCategory;
	}
	public void setSubjectCategory(SubjectCategory subjectCategory) {
		this.subjectCategory = subjectCategory;
	}
	public ChapterCategory getChapterCategory() {
		return chapterCategory;
	}
	public void setChapterCategory(ChapterCategory chapterCategory) {
		this.chapterCategory = chapterCategory;
	}
	public TopicCategory getTopicCategory() {
		return topicCategory;
	}
	public void setTopicCategory(TopicCategory topicCategory) {
		this.topicCategory = topicCategory;
	}
	public CategoryClass getCategoryClass() {
		return categoryClass;
	}
	public void setCategoryClass(CategoryClass categoryClass) {
		this.categoryClass = categoryClass;
	}
	
	

}
