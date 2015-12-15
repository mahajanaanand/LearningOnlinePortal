package fss.webportal.lo.domain;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

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
	private String subjectTitle;
	@Column(name="suc_modify_date")
	private Date subjectModifyDate;
	@Column(name="suc_status")
	private int status;
	@Column(name="suc_flag")
	private int flag;
	@Column(name="suc_remark")
	private String remark;
	@ManyToOne
	
	private CourseCategory courseCategory;
	
	public SubjectCategory(){
		
	}

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
	
	
	
	
	
	
	
	

}
