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
@Table(name="os_test_result")
public class TestResult implements Serializable
{
	public TestResult()
	{}
    private static final long serialVersionUID=1L;
    @Id
    @Column(name="PK_tr_test_result_id")
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int testResultId;
    @DateTimeFormat(pattern="dd/mm/yyyy")
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="tr_test_taken_date")
    private Date testTakenDate;
    @Column(name="tr_test_score")
    private int score;
    @Column(name="tr_status")
    private int status;
    @Column(name="tr_flag")
    private int flag;
    @Column(name="tr_wrong_answers")
    private String wrongAnswers;
    @Column(name="FK_test_id")
    private int testId;
    @Column(name="FK_member_id")
    private int memberId;
	public int getTestResultId() {
		return testResultId;
	}
	public void setTestResultId(int testResultId) {
		this.testResultId = testResultId;
	}
	public Date getTestTakenDate() {
		return testTakenDate;
	}
	public void setTestTakenDate(Date testTakenDate) {
		Date date=new Date();
		this.testTakenDate = date;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
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
	public String getWrongAnswers() {
		return wrongAnswers;
	}
	public void setWrongAnswers(String wrongAnswers) {
		this.wrongAnswers = wrongAnswers;
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
