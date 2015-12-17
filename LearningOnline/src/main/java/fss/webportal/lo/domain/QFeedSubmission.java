package fss.webportal.lo.domain;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

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
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="os_qfeed_submission")
public class QFeedSubmission implements Serializable
{
	
	public QFeedSubmission()
	{}
	private static final long serialVersionUID = 1L; 
	@Id
	@Column(name="PK_qs_qfeed_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int qfeedId;
	@Column(name="qs_qfeed_id_manual")
	private int qfeedIdManual;
	@Column(name="qs_title")
	private String title;
	@Column(name="qs_no_of_question")
	private int numberOfQuestion;
	@DateTimeFormat(pattern="dd/mm/yyyy")
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="qs_submit_date")
	private Date submitDate;
	@Column(name="qs_upload_status")
	private int uploadStatus;
	@Column(name="qs_upload_path")
	private String uploadPath;
	@Column(name="qs_status")
	private int status;
	@Column(name="qs_flag")
	private int flag;
	@Column(name="qs_remark")
	private String remark;
	@Column(name="FK_subject_id")
	private int subjectId;
	
	@ManyToOne
	@JoinTable(name="os_qfeed_submission_info",  
	joinColumns={@JoinColumn(name="FK_qfeed_id",referencedColumnName="PK_qs_qfeed_id")},  
	inverseJoinColumns={@JoinColumn(name="FK_member_id",referencedColumnName="PK_mi_member_id")})
	private MemberInfo qfeedsubmissionMember;
		
	@ManyToOne
	@JoinTable(name="os_category_class_qfeed",  
	joinColumns={@JoinColumn(name="FK_qfeed_id",referencedColumnName="PK_qs_qfeed_id")},  
	inverseJoinColumns={@JoinColumn(name="FK_category_class_id",referencedColumnName="PK_category_class_id")})
	private CategoryClass categoryclassQFeed;
	
	public int getQfeedId() {
		return qfeedId;
	}

	public void setQfeedId(int qfeedId) {
		this.qfeedId = qfeedId;
	}

	public int getQfeedIdManual() {
		return qfeedIdManual;
	}

	public void setQfeedIdManual(int qfeedIdManual) {
		this.qfeedIdManual = qfeedIdManual;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getNumberOfQuestion() {
		return numberOfQuestion;
	}

	public void setNumberOfQuestion(int numberOfQuestion) {
		numberOfQuestion = numberOfQuestion;
	}

	public Date getSubmitDate() {
		return submitDate;
	}

	public void setSubmitDate(Date submitDate) {
		Date date=new Date();
		this.submitDate = date;
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

	public int getSubjectId() {
		return subjectId;
	}

	public void setSubjectId(int subjectId) {
		this.subjectId = subjectId;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public MemberInfo getQfeedsubmissionMember() {
		return qfeedsubmissionMember;
	}

	public void setQfeedsubmissionMember(MemberInfo qfeedsubmissionMember) {
		this.qfeedsubmissionMember = qfeedsubmissionMember;
	}
	public CategoryClass getCategoryclassQFeed() {
		return categoryclassQFeed;
	}

	public void setCategoryclassQFeed(CategoryClass categoryclassQFeed) {
		this.categoryclassQFeed = categoryclassQFeed;
	}
	
}
