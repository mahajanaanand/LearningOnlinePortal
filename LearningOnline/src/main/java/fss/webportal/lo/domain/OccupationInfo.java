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
@Table(name="os_occupation_info")
public class OccupationInfo implements Serializable
{
	
	public OccupationInfo()
	{
		
	}
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name="PK_oi_occupation_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int occupationId;
	@Column(name="oi_employer")
	private String employer;
	@Column(name="oi_designation")
	private String designation;
	@Column(name="os_experiance")
	private int experiance;
	@DateTimeFormat(pattern="dd/mm/yyyy")
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="oi_duration_from")
	private Date durationFrom;
	@DateTimeFormat(pattern="dd/mm/yyyy")
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="oi_duration_to")
	private Date durationTo;
	@DateTimeFormat(pattern="dd/mm/yyyy")
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="oi_modify_date")
	private Date modifyDate;
	@Column(name="oi_upload_status")
	private int uploadStatus;
	@Column(name="oi_upload_path")
	private String uploadPath;
	@Column(name="oi_status")
	private int status;
	@Column(name="oi_flag")
	private int flag;
	@Column(name="oi_remark")
	private String remark;
	
	@ManyToOne
	@JoinTable(name="os_member_occupation",  
	joinColumns={@JoinColumn(name="FK_member_id",referencedColumnName="PK_mi_member_id")},  
	inverseJoinColumns={@JoinColumn(name="FK_occupation_id",referencedColumnName="PK_oi_occupation_id")})
	private MemberInfo memberinfo;

	public int getOccupationId() {
		return occupationId;
	}
	public void setOccupationId(int occupationId) {
		this.occupationId = occupationId;
	}
	public String getEmployer() {
		return employer;
	}
	public void setEmployer(String employer) {
		this.employer = employer;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public int getExperiance() {
		return experiance;
	}
	public void setExperiance(int experiance) {
		this.experiance = experiance;
	}
	public Date getDurationFrom() {
		return durationFrom;
	}
	public void setDurationFrom(Date durationFrom) {
		Date date=new Date();
		this.durationFrom = date;
	}
	public Date getDurationTo() {
		return durationTo;
	}
	public void setDurationTo(Date durationTo) {
		Date date=new Date();
		this.durationTo = date;
	}
	public Date getModifyDate() {
		return modifyDate;
	}
	public void setModifyDate(Date modifyDate) {
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
	public void setUploadPath(String uploadPath) {
		this.uploadPath = uploadPath;
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
