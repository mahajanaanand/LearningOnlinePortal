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
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.codehaus.jackson.annotate.JsonIgnore;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="os_mcq_test")
public class MCQTest implements Serializable
{
	public MCQTest()
	{}
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name="PK_mt_test_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int testId;
	@Column(name="mt_test_id_manual")
	private int testIdManul;
	@Column(name="mt_test_title")
	private String testTitle;
	@Column(name="mt_test_desc")
	private String testDecs;
	@Column(name="mt_count_question")
	private int countQuestion;
	@Column(name="mt_time4each_question")
	private int time4EachQuestion;
	@Column(name="mt_test_type")
	private String testType;
	@Column(name="mt_test_level")
	private String testLevel;
	@Column(name="mt_test_status")
	private int status;
	@Column(name="mt_test_flag")
	private int flag;
	@DateTimeFormat(pattern="dd/mm/yyyy")
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="mt_created_date")
	private Date createdDate;
	@Column(name="mt_remark")
	private String remark;
	@Column(name="PK_member_id")
	private int memberId;
		
	@ManyToMany(cascade=CascadeType.ALL,fetch=FetchType.LAZY)  
	@JoinTable(name="os_mcq_submission_test",  
	joinColumns={@JoinColumn(name="FK_test_id",referencedColumnName="PK_mt_test_id")},  
	inverseJoinColumns={@JoinColumn(name="FK_ms_mcq_id",referencedColumnName="PK_ms_mcq_id")})
	private Set<MCQSubmission> mcqSubmissionMcqTest;
	
	@ManyToOne
	@JoinTable(name="os_group_test",  
	joinColumns={@JoinColumn(name="FK_group_id",referencedColumnName="PK_ge_group_id")},  
	inverseJoinColumns={@JoinColumn(name="FK_test_id",referencedColumnName="PK_mt_test_id")}) 
	private GroupEntry eroupentry;
	
	@ManyToMany(cascade=CascadeType.ALL,fetch=FetchType.LAZY)  
	@JoinTable(name="os_subject_cat_mcq_test",  
	joinColumns={@JoinColumn(name="FK_test_id",referencedColumnName="PK_mt_test_id")},  
	inverseJoinColumns={@JoinColumn(name="FK_subject_id",referencedColumnName="PK_suc_subject_id")})
	private Set<SubjectCategory> subjectCategoryMcqTest;
	
	
		
	public int getTestId() {
		return testId;
	}
	public void setTestId(int testId) {
		this.testId = testId;
	}
	public int getTestIdManul() {
		return testIdManul;
	}
	public void setTestIdManul(int testIdManul) {
		this.testIdManul = testIdManul;
	}
	public String getTestTitle() {
		return testTitle;
	}
	public void setTestTitle(String testTitle) {
		this.testTitle = testTitle;
	}
	public String getTestDecs() {
		return testDecs;
	}
	public void setTestDecs(String testDecs) {
		this.testDecs = testDecs;
	}
	public int getCountQuestion() {
		return countQuestion;
	}
	public void setCountQuestion(int countQuestion) {
		this.countQuestion = countQuestion;
	}
	public int getTime4EachQuestion() {
		return time4EachQuestion;
	}
	public void setTime4EachQuestion(int time4EachQuestion) {
		this.time4EachQuestion = time4EachQuestion;
	}
	public String getTestType() {
		return testType;
	}
	public void setTestType(String testType) {
		this.testType = testType;
	}
	public String getTestLevel() {
		return testLevel;
	}
	public void setTestLevel(String testLevel) {
		this.testLevel = testLevel;
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
	public Date getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(Date createdDate) {
		Date date=new Date();
		this.createdDate = date;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public int getMemberId() {
		return memberId;
	}
	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}
	
	
}	

