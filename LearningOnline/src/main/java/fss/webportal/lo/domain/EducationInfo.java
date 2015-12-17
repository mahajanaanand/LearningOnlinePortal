package fss.webportal.lo.domain;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="os_education_info")
public class EducationInfo implements Serializable
{
	
	public EducationInfo()
	{}
	private static final long serialVersionUID = 1L; 
	@Id
	@Column(name="PK_ei_education_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int educationId;
	@Column(name="ei_qualification")
	private String qualification;
	@Column(name="ei_specialization")
	private String specialization;
	@Column(name="ei_university")
	private String university;
	@DateTimeFormat(pattern="dd/mm/yyyy")
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="ei_duration_from")
	private Date durationFrom;
	@DateTimeFormat(pattern="dd/mm/yyyy")
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="ei_duration_to")
	private Date durationTo;
	@DateTimeFormat(pattern="dd/mm/yyyy")
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="ei_modify_date")
	private Date modifyDate;
	@Column(name="ei_upload_status")
	private int uploadStatus;
	@Column(name="ei_upload_path")
	private String uploadPath;
	@Column(name="ei_status")
	private int status;
	@Column(name="ei_flag")
	private int flag;
	@Column(name="ei_remark")
	private String remark;
	
	@ManyToOne
	@JoinTable(name="os_member_education",  
	joinColumns={@JoinColumn(name="FK_education_id",referencedColumnName="PK_ei_education_id")},  
	inverseJoinColumns={@JoinColumn(name="FK_member_id",referencedColumnName="PK_mi_member_id")})
	private MemberInfo memberInfo;
		

	public int getEducationId() {
		return educationId;
	}

	public void setEducationId(int educationId) {
		this.educationId = educationId;
	}

	public String getQualification() {
		return qualification;
	}

	public void setQualification(String qualification){
		this.qualification = qualification;
	}

	public String getSpecialization(){
		return specialization;
	}

	public void setSpecialization(String specialization){
		this.specialization = specialization;
	}

	public String getUniversity() {
		return university;
	}

	public void setUniversity(String university){
		this.university = university;
	}

	public Date getDurationFrom() {
		return durationFrom;
	}

	public void setDurationFrom(Date durationFrom){
		Date date=new Date();
		this.durationFrom = date;
	}

	public Date getDurationTo() {
		return durationTo;
	}

	public void setDurationTo(Date durationTo){
		Date date=new Date();
		this.durationTo = date;
	}

	public Date getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(Date modifyDate){
		Date date=new Date();
		this.modifyDate = date;
	}

	public int getUploadStatus() {
		return uploadStatus;
	}

	public void setUploadStatus(int uploadStatus) {
		this.uploadStatus = uploadStatus;
	}

	public String getUploadPath() {
		return uploadPath;
	}

	public void setUploadPath(String uploadPath){
		this.uploadPath = uploadPath;
	}

	public int getStatus(){
		return status;
	}

	public void setStatus(int status){
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

	public MemberInfo getMemberInfo() {
		return memberInfo;
	}

	public void setMemberInfo(MemberInfo memberInfo) {
		this.memberInfo = memberInfo;
	}
	
	
	

}
