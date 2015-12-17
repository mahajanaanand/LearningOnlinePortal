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
@Table(name="os_answer_comment")
public class QAAnswerComment implements Serializable
{
	public QAAnswerComment()
	{}
	private static final long SerialVersionUID=1L;
	@Id
	@Column(name="PK_ac_comment_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int commentId;
	@Column(name="ac_answer_comment")
	private String answerCommentText;
	@DateTimeFormat(pattern="dd/mm/yyyy")
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="ac_answer_comment_date")
	private Date answerCommentDate;
	@Column(name="ac_status")
	private int status;
	@Column(name="ac_flag")
	private int flag;
	
	@ManyToOne
	@JoinTable(name="os_answer_comment",  
	joinColumns={@JoinColumn(name="FK_comment_id",referencedColumnName="PK_ac_comment_id")},  
	inverseJoinColumns={@JoinColumn(name="FK_answer_id",referencedColumnName="PK_qa_answer_id")}) 
	private QAAnswer answerComment;
	
	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "answerCommentAnswerReply")
	private Set<QAAnswerCommentReply> answerCommentReplies;
	
	public int getCommentId() {
		return commentId;
	}
	public void setCommentId(int commentId) {
		this.commentId = commentId;
	}
	public Date getAnswerCommentDate() {
		return answerCommentDate;
	}
	public void setAnswerCommentDate(Date answerCommentDate) {
		Date date=new Date();
		this.answerCommentDate = date;
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
	public static long getSerialversionuid() {
		return SerialVersionUID;
	}
	public String getAnswerCommentText() {
		return answerCommentText;
	}
	public void setAnswerCommentText(String answerCommentText) {
		this.answerCommentText = answerCommentText;
	}
	public QAAnswer getAnswerComment() {
		return answerComment;
	}
	public void setAnswerComment(QAAnswer answerComment) {
		this.answerComment = answerComment;
	}
	public Set<QAAnswerCommentReply> getAnswerCommentReplies() {
		return answerCommentReplies;
	}
	public void setAnswerCommentReplies(
			Set<QAAnswerCommentReply> answerCommentReplies) {
		this.answerCommentReplies = answerCommentReplies;
	}
	
}
