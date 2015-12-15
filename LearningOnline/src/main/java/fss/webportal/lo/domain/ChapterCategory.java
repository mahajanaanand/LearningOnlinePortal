package fss.webportal.lo.domain;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.codehaus.jackson.annotate.JsonIgnore;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="os_chapter_cat")
public class ChapterCategory implements Serializable
{
    public ChapterCategory(){
	}
    
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="PK_chc_chpter_id")
	private int chapterId;
	@Column(name="chc_title")
	@NotEmpty
	private String chapterTitle;
	@Column(name="chc_modify_date")
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	@Temporal(TemporalType.TIMESTAMP)
	private Date chapterModifyDate;
	@Column(name="chc_status")
	private int status;
	@Column(name="chc_flag")
	private int flag;
	@Column(name="chc_remark")
	private String remark;
	
	@ManyToOne
	@JoinTable(name="os_subject_chapter",  
	joinColumns={@JoinColumn(name="FK_subject_id",referencedColumnName="PK_suc_subject_id")}, 
    inverseJoinColumns={@JoinColumn(name="FK_chapter_id",referencedColumnName="PK_chc_chpter_id")}) 
	private SubjectCategory subjectCategory;
	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY,mappedBy="chapterCategory", cascade=CascadeType.ALL)
	private Set<TopicCategory> topicCategory;
	
	@JsonIgnore
    @OneToMany(fetch = FetchType.LAZY,mappedBy="chapterCategory", cascade=CascadeType.ALL) 
    private Set<CategoryClass> categoryClasses;
	
	public int getChapterId() {
		return chapterId;
	}

	public void setChapterId(int chapterId) {
		this.chapterId = chapterId;
	}

	public String getChapterTitle() {
		return chapterTitle;
	}

	public void setChapterTitle(String chapterTitle) {
		this.chapterTitle = chapterTitle;
	}

	public Date getChapterModifyDate() {
		return chapterModifyDate;
	}

	public void setChapterModifyDate(Date chapterModifyDate) {
		this.chapterModifyDate = chapterModifyDate;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getFlag() {
		return flag;
	}

	public void setFlag(int flag) {
		this.flag = flag;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}
	
	public SubjectCategory getSubjectCategory() {
		return subjectCategory;
	}

	public void setSubjectCategory(SubjectCategory subjectCategory) {
		this.subjectCategory = subjectCategory;
	}

	public Set<TopicCategory> getTopicCategory() {
		return topicCategory;
	}

	public void setTopicCategory(Set<TopicCategory> topicCategory) {
		this.topicCategory = topicCategory;
	}

	public Set<CategoryClass> getCategoryClasses() {
		return categoryClasses;
	}

	public void setCategoryClasses(Set<CategoryClass> categoryClasses) {
		this.categoryClasses = categoryClasses;
	}
	
	

}
