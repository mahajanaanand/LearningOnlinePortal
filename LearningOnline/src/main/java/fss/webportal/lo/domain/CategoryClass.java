package fss.webportal.lo.domain;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name="os_category_class")
public class CategoryClass 
{	
	
	public CategoryClass(){
	}
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="PK_category_class_id")
	private int categoryClassId;
	@Column(name="cc_count_question")
	private int countQuestion;
	@Column(name="cc_count_answer")
	private int countAnswer;
	
	@ManyToOne
	@JoinColumn(name="FK_course_id")
	private CourseCategory courseCategory;
	@ManyToOne
	@JoinColumn(name="FK_subject_id")
	private SubjectCategory subjectCategory;
	@ManyToOne
	@JoinColumn(name="FK_chapter_id")
	private ChapterCategory chapterCategory;
	@ManyToOne
	@JoinColumn(name="FK_topic_id")
	private TopicCategory topicCategory;
		
	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY,mappedBy="categoryclassQFeed", cascade=CascadeType.ALL)
	private Set<QFeedSubmission> qfeedSubmissionCategory;
	
	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY,mappedBy="categoryClass", cascade=CascadeType.ALL) 
	private Set<GroupEntry> groupEntries;
	
	@ManyToMany(fetch = FetchType.LAZY,mappedBy="categoryClassQaquestion",cascade=CascadeType.ALL)
	private Set<QAQuestion> qaQuestion;
	
	public int getCategoryClassId() {
		return categoryClassId;
	}

	public void setCategoryClassId(int categoryClassId) {
		this.categoryClassId = categoryClassId;
	}

	public int getCountQuestion() {
		return countQuestion;
	}

	public void setCountQuestion(int countQuestion) {
		this.countQuestion = countQuestion;
	}

	public int getCountAnswer() {
		return countAnswer;
	}

	public void setCountAnswer(int countAnswer) {
		this.countAnswer = countAnswer;
	}

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

	public Set<QFeedSubmission> getQfeedSubmissionCategory() {
		return qfeedSubmissionCategory;
	}

	public void setQfeedSubmissionCategory(
			Set<QFeedSubmission> qfeedSubmissionCategory) {
		this.qfeedSubmissionCategory = qfeedSubmissionCategory;
	}

	public Set<GroupEntry> getGroupEntries() {
		return groupEntries;
	}

	public void setGroupEntries(Set<GroupEntry> groupEntries) {
		this.groupEntries = groupEntries;
	}

	public Set<QAQuestion> getQaQuestion() {
		return qaQuestion;
	}

	public void setQaQuestion(Set<QAQuestion> qaQuestion) {
		this.qaQuestion = qaQuestion;
	}
	
}
