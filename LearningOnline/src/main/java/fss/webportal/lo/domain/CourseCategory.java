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
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonIgnore;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;
@Entity
@Table(name="os_course_cat")
public class CourseCategory implements Serializable
{
	
	public CourseCategory(){}
	
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="PK_coc_course_id")
    private int courseId;
    @Column(name="coc_title")
    @NotEmpty
    private String courseTitle ;
    @Column(name="coc_modify_date")
    @DateTimeFormat(pattern = "dd/MM/yyyy")
    @Temporal(TemporalType.TIMESTAMP)
    private Date courseModifyDate ;
    @Column(name="coc_status")
    private int status ;
    @Column(name="coc_flag")
    private int flag ;
    @Column(name="coc_remark")
    private String remark ;
   
    @JsonIgnore
    @OneToMany(fetch = FetchType.LAZY,mappedBy="courseCategory", cascade=CascadeType.ALL)
    private Set<SubjectCategory> subjectCategory;
 
	public int getCourseId() {
		return courseId;
	}

	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}

	public String getCourseTitle() {
		return courseTitle;
	}

	public void setCourseTitle(String courseTitle) {
		this.courseTitle = courseTitle;
	}

	public Date getCourseModifyDate() {
		return courseModifyDate;
	}

	public void setCourseModifyDate(Date courseModifyDate) {
		this.courseModifyDate = courseModifyDate;
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
	public Set<SubjectCategory> getSubjectCategory() {
		return subjectCategory;
	}

	public void setSubjectCategory(Set<SubjectCategory> subjectCategory) {
		this.subjectCategory = subjectCategory;
	}
	
}
