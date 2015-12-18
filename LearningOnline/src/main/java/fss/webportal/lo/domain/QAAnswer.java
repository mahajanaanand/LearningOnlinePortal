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
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonIgnore;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="os_qa_answer")
public class QAAnswer implements Serializable
{
	public QAAnswer()
	{}
	private static final long SerialVersionUID=1L;
	@Id
	@Column(name="PK_qa_answer_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int answerId;
	@Column(name="qa_answer")
	private String answerText;
	@DateTimeFormat(pattern="dd/mm/yyyy")
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="qa_answered_date")
	private Date answeredDate;
	@Column(name="qa_answer_visibility")
	private int answerVisibility;
	@Column(name="qa_status")
	private int status;
	@Column(name="qa_flag")
	private int flag;
	
	@ManyToOne
	@JoinTable(name="os_question_answer",  
	joinColumns={@JoinColumn(name="FK_answer_id",referencedColumnName="PK_qa_answer_id")},  
	inverseJoinColumns={@JoinColumn(name="FK_question_id",referencedColumnName="PK_qa_question_id")}) 
	private QAQuestion questionAnswer;
	
	
	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY,mappedBy="answerComment", cascade=CascadeType.ALL) 
	private Set<QAAnswerComment> answerComment;
	
	
	
	
	public int getAnswerId() {
		return answerId;
	}
	public void setAnswerId(int answerId) {
		this.answerId = answerId;
	}
	public Date getAnsweredDate() {
		return answeredDate;
	}
	public void setAnsweredDate(Date answeredDate) {
		Date date=new Date();
		this.answeredDate = date;
	}
	public int getAnswerVisibility() {
		return answerVisibility;
	}
	public void setAnswerVisibility(int answerVisibility) {
		this.answerVisibility = answerVisibility;
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
	public QAQuestion getQuestionAnswer() {
		return questionAnswer;
	}
	public void setQuestionAnswer(QAQuestion questionAnswer) {
		this.questionAnswer = questionAnswer;
	}
	public Set<QAAnswerComment> getAnswerComment() {
		return answerComment;
	}
	public void setAnswerComment(Set<QAAnswerComment> answerComment) {
		this.answerComment = answerComment;
	}
	public String getAnswerText() {
		return answerText;
	}
	public void setAnswerText(String answerText) {
		this.answerText = answerText;
	}
	
	
}
