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
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.codehaus.jackson.annotate.JsonIgnore;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="os_qa_question")
public class QAQuestion implements Serializable
{
	public QAQuestion()
	{}
	private static final long SerialVersionUID=1L;
	@Id
	@Column(name="PK_qa_question_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int questionId;
	@Column(name="qa_question_id_manual")
	private int questionIdManual;
	@Column(name="qa_question_title")
	private String questionTitle;
	@Column(name="qa_question_detail")
	private String questionDetail;
	@DateTimeFormat(pattern="dd/mm/yyyy")
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="qa_question_asked_date")
	private Date questionAskedDate;
	@Column(name="qa_status")
	private int status;
	@Column(name="qa_flag")
	private int flag;
	
	@ManyToOne
	@JoinTable(name="os_qa_terminal_member",  
	joinColumns={@JoinColumn(name="FK_question_id",referencedColumnName="PK_qa_question_id")},  
	inverseJoinColumns={@JoinColumn(name="FK_member_id",referencedColumnName="PK_mi_member_id")}) 
	private MemberInfo memberInfoQaquestion;
	
	@ManyToMany
	@JoinTable(name="os_category_class_qa_terminal",  
	joinColumns={@JoinColumn(name="FK_question_id",referencedColumnName="PK_qa_question_id")},  
	inverseJoinColumns={@JoinColumn(name="FK_category_class_id",referencedColumnName="PK_category_class_id")}) 
	private CategoryClass categoryClassQaquestion;
	
	@ManyToMany
	@JoinTable(name="os_keyword_qa_terminal",  
	joinColumns={@JoinColumn(name="FK_question_id",referencedColumnName="PK_qa_question_id")},  
	inverseJoinColumns={@JoinColumn(name="FK_keyword_id",referencedColumnName="PK_keyword_id")}) 
	private Keyword keywordQaQuestion;
	
	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "qaQuestionqaAnswer")
	private Set<QAAnswer> qaAanswer;
	
	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "qaQuestionQuestionComment")
	private Set<QuestionComment> questionComment;
	
	
	
	
	
	public int getQuestionId() {
		return questionId;
	}
	public void setQuestionId(int questionId) {
		this.questionId = questionId;
	}
	public int getQuestionIdManual() {
		return questionIdManual;
	}
	public void setQuestionIdManual(int questionIdManual) {
		this.questionIdManual = questionIdManual;
	}
	public String getQuestionTitle() {
		return questionTitle;
	}
	public void setQuestionTitle(String questionTitle) {
		this.questionTitle = questionTitle;
	}
	public String getQuestionDetail() {
		return questionDetail;
	}
	public void setQuestionDetail(String questionDetail) {
		this.questionDetail = questionDetail;
	}
	public Date getQuestionAskedDate() {
		return questionAskedDate;
	}
	public void setQuestionAskedDate(Date questionAskedDate) {
		Date date=new Date();
		this.questionAskedDate = date;
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
	
}
