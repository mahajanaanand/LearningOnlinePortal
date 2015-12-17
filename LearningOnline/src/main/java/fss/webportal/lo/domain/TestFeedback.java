package fss.webportal.lo.domain;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="os_test_feedback")
public class TestFeedback implements Serializable
{
	public TestFeedback()
	{}
	private static final long SerialVersionUID=1L;
	@Id
	@Column(name="PK_tf_test_feedback_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int testFeedbackId;
	@Column(name="tf_test_feedback")
	private String  testFeedback;
	@DateTimeFormat(pattern="dd/mm/yyyy")
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="tf_test_feedback_date")
	private Date testFeedbackDate;
	@Column(name="tf_status")
	private int status;
	@Column(name="tf_flag")
	private int flag;
	@Column(name="FK_test_id")
	private int testId;
	@Column(name="FK_member_id")
	private int memberId;
	public int getTestFeedbackId() {
		return testFeedbackId;
	}
	public void setTestFeedbackId(int testFeedbackId) {
		this.testFeedbackId = testFeedbackId;
	}
	public String getTestFeedback() {
		return testFeedback;
	}
	public void setTestFeedback(String testFeedback) {
		this.testFeedback = testFeedback;
	}
	public Date getTestFeedbackDate() {
		return testFeedbackDate;
	}
	public void setTestFeedbackDate(Date testFeedbackDate) {
		Date date=new Date();
		this.testFeedbackDate = date;
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
	public int getTestId() {
		return testId;
	}
	public void setTestId(int testId) {
		this.testId = testId;
	}
	public int getMemberId() {
		return memberId;
	}
	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}
	
	
	

}
