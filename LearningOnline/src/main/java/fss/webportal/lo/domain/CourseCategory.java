package fss.webportal.lo.domain;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="os_course_cat")
public class CourseCategory implements Serializable
{
    private static final long serialVersionUID = 1L;
    @Id
    @Column(name="PK_coc_course_id")
    private int courseId;
    @Column(name="coc_title")
    private String courseTitle ;
    @Column(name="coc_modify_date")
    private Date courseModifyDate ;
    @Column(name="coc_status")
    private int status ;
    @Column(name="coc_flag")
    private int flag ;
    @Column(name="coc_remark")
    private String remark ;
    
    public CourseCategory()
    {
    	
    }

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
    
    
	
	

}
