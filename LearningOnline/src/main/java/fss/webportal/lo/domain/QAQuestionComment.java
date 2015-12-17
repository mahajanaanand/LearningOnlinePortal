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
@Table(name="os_question_comment")
public class QAQuestionComment implements Serializable
{
	public QAQuestionComment()
	{}
	private static final long SerialVersinoUID=1L;
	@Id
	@Column(name="PK_qc_comment_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int commentId;
	@Column(name="qc_question_comment")
	private String questionCommentText;
	@DateTimeFormat(pattern="dd/mm/yyyy")
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="qc_question_comment_date")
	private Date questionCommentDate;
	@Column(name="qc_status")
	private int status;
	@Column(name="qc_flag")
	private int flag;
	
	@ManyToOne
	@JoinTable(name="os_question_comment",  
	joinColumns={@JoinColumn(name="FK_comment_id",referencedColumnName="PK_qc_comment_id")},  
	inverseJoinColumns={@JoinColumn(name="FK_question_id",referencedColumnName="PK_qa_question_id")}) 
	private QAQuestion questionComment;
	
	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "questionCommentReply")
	private Set<QAQuestionCommentReply>  questionReply;
	
	
	
	public int getCommentId() {
		return commentId;
	}
	public void setCommentId(int commentId) {
		this.commentId = commentId;
	}

	public Date getQuestionCommentDate() {
		return questionCommentDate;
	}
	public void setQuestionCommentDate(Date questionCommentDate) {
		Date date=new Date();
		this.questionCommentDate = date;
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
	public String getQuestionCommentText() {
		return questionCommentText;
	}
	public void setQuestionCommentText(String questionCommentText) {
		this.questionCommentText = questionCommentText;
	}
	public QAQuestion getQuestionComment() {
		return questionComment;
	}
	public void setQuestionComment(QAQuestion questionComment) {
		this.questionComment = questionComment;
	}
	public Set<QAQuestionCommentReply> getQuestionReply() {
		return questionReply;
	}
	public void setQuestionReply(Set<QAQuestionCommentReply> questionReply) {
		this.questionReply = questionReply;
	}
	
	
	
	
}
