package fss.webportal.lo.domain;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="os_question_reply")
public class QuestionReply implements Serializable
{
	public QuestionReply()
	{}
	private static final long SerialVersionUID=1L;
	@Id
	@Column(name="PK_qr_reply_id")
	@GeneratedValue()
	private int replyId;
	@Column(name="qr_question_reply")
	private String questionReply;
	@DateTimeFormat(pattern="dd/mm/yyyy")
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="qr_question_reply_date")
	private Date questionReplyDate;
	@Column(name="qr_status")
	private int status;
	@Column(name="qr_flag")
	private int flag;
	
	@ManyToOne
	@JoinTable(name="os_question_comment_reply",  
	joinColumns={@JoinColumn(name="FK_comment_id",referencedColumnName="PK_qc_comment_id")},  
	inverseJoinColumns={@JoinColumn(name="FK_reply_id",referencedColumnName="PK_qr_reply_id")}) 
	private QuestionComment  questionCommentQuestionReply;
	
	
	
	public int getReplyId() {
		return replyId;
	}
	public void setReplyId(int replyId) {
		this.replyId = replyId;
	}
	public String getQuestionReply() {
		return questionReply;
	}
	public void setQuestionReply(String questionReply) {
		this.questionReply = questionReply;
	}
	public Date getQuestionReplyDate() {
		return questionReplyDate;
	}
	public void setQuestionReplyDate(Date questionReplyDate) {
		Date date=new Date();
		this.questionReplyDate = date;
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
