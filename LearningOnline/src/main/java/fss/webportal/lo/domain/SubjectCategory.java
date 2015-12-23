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
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonIgnore;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="os_subject_cat")
public class SubjectCategory implements Serializable
{
   	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="PK_suc_subject_id")
	private int subjectId;
	@Column(name="suc_title")
    @NotEmpty
	private String subjectTitle;
	@Column(name="suc_modify_date")
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	@Temporal(TemporalType.TIMESTAMP)
	private Date subjectModifyDate;
	@Column(name="suc_status")
	private int status;
	@Column(name="suc_flag")
	private int flag;
	@Column(name="suc_remark")
	private String remark;
		
	public SubjectCategory(int subjectId) {
		super();
		this.subjectId = subjectId;
	}

	public SubjectCategory() {
		super();
	}
	
	@ManyToOne
	@JoinTable(name="os_course_subject",  
	joinColumns={@JoinColumn(name="FK_subject_id",referencedColumnName="PK_suc_subject_id")},  
	inverseJoinColumns={@JoinColumn(name="FK_course_id",referencedColumnName="PK_coc_course_id")}) 
	private CourseCategory courseCategory;
	
	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY,mappedBy="subjectCategory", cascade=CascadeType.ALL)
	private Set<ChapterCategory> chapterCategory;
	
	
	@ManyToMany(fetch = FetchType.LAZY,mappedBy="subjectCategoryMcqTest",cascade=CascadeType.ALL)
	private Set<MCQTest> mcqTestSubjectCategory;
	

	public int getSubjectId() {
		return subjectId;
	}

	public void setSubjectId(int subjectId) {
		this.subjectId = subjectId;
	}

	public String getSubjectTitle() {
		return subjectTitle;
	}

	public void setSubjectTitle(String subjectTitle) {
		this.subjectTitle = subjectTitle;
	}

	public Date getSubjectModifyDate() {
		return subjectModifyDate;
	}

	public void setSubjectModifyDate(Date subjectModifyDate) {
		this.subjectModifyDate = subjectModifyDate;
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
	
	public CourseCategory getCourseCategory() {
		return courseCategory;
	}

	public void setCourseCategory(CourseCategory courseCategory) {
		this.courseCategory = courseCategory;
	}

	public Set<ChapterCategory> getChapterCategory() {
		return chapterCategory;
	}

	public void setChapterCategory(Set<ChapterCategory> chapterCategory) {
		this.chapterCategory = chapterCategory;
	}

	public Set<MCQTest> getMcqTestSubjectCategory() {
		return mcqTestSubjectCategory;
	}

	public void setMcqTestSubjectCategory(Set<MCQTest> mcqTestSubjectCategory) {
		this.mcqTestSubjectCategory = mcqTestSubjectCategory;
	}
	public void setCustomValue(Date subjectModifyDate,String remark,int status){
		this.remark = remark;
		this.status=status;
		this.subjectModifyDate=subjectModifyDate;
	}

		
}
