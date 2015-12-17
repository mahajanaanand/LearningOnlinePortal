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
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="os_mcq_submission")
public class MCQSubmission implements Serializable
{
	
	public MCQSubmission()
	{}
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name="PK_ms_mcq_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int mcqId;
	@Column(name="ms_question_detail")
	private String questionDetail;
	@Column(name="ms_option1")
	private String option1;
	@Column(name="ms_option2")
	private String option2;
	@Column(name="ms_option3")
	private String option3;
	@Column(name="ms_option4")
	private String option4;
	@Column(name="ms_answer")
	private String answer;
	@DateTimeFormat(pattern="dd/mm/yyyy")
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="ms_submit_date")
	private Date submitDate;
	@Column(name="ms_explanation")
	private String explanation;
	@Column(name="ms_status")
	private int status;
	@Column(name="falg")
	private int flag;
	@Column(name="ms_remark")
	private String remark;
	
	@ManyToMany(fetch = FetchType.LAZY,mappedBy="mcqSubmissionMcqTest",cascade=CascadeType.ALL)
	private Set<MCQTest> mcqTest;
	
	
	
	public int getMcqId() {
		return mcqId;
	}
	public void setMcqId(int mcqId) {
		this.mcqId = mcqId;
	}
	public String getQuestionDetail() {
		return questionDetail;
	}
	public void setQuestionDetail(String questionDetail) {
		this.questionDetail = questionDetail;
	}
	public String getOption1() {
		return option1;
	}
	public void setOption1(String option1) {
		this.option1 = option1;
	}
	public String getOption2() {
		return option2;
	}
	public void setOption2(String option2) {
		this.option2 = option2;
	}
	public String getOption3() {
		return option3;
	}
	public void setOption3(String option3) {
		this.option3 = option3;
	}
	public String getOption4() {
		return option4;
	}
	public void setOption4(String option4) {
		this.option4 = option4;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public Date getSubmitDate() {
		return submitDate;
	}
	public void setSubmitDate(Date submitDate) {
		Date date=new Date();
		this.submitDate = date;
	}
	public String getExplanation() {
		return explanation;
	}
	public void setExplanation(String explanation) {
		this.explanation = explanation;
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
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public Set<MCQTest> getMcqTest() {
		return mcqTest;
	}
	public void setMcqTest(Set<MCQTest> mcqTest) {
		this.mcqTest = mcqTest;
	}
	
	
}
