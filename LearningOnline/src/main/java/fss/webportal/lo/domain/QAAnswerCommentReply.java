package fss.webportal.lo.domain;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="os_answer_reply")
public class QAAnswerCommentReply implements Serializable
{
	public QAAnswerCommentReply()
	{}
	private static final long SerialVersionUID=1L;
	@Id
	@Column(name="PK_ar_reply_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int replyId;
	@Column(name="ar_answer_reply")
	private String answerReply;
	@DateTimeFormat(pattern="dd/mm/yyyy")
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="ar_answer_reply_date")
	private Date answerReplyDate;
	@Column(name="ar_status")
	private int status;
	@Column(name="ar_flag")
	private int flag;
	
	@ManyToOne
	@JoinTable(name="os_answer_comment_reply",  
	joinColumns={@JoinColumn(name="FK_reply_id",referencedColumnName="PK_ar_reply_id")},  
	inverseJoinColumns={@JoinColumn(name="FK_comment_id",referencedColumnName="PK_ac_comment_id")}) 
	private QAAnswerComment answerCommentAnswerReply;
	
	
	public int getReplyId() {
		return replyId;
	}
	public void setReplyId(int replyId) {
		this.replyId = replyId;
	}
	public String getAnswerReply() {
		return answerReply;
	}
	public void setAnswerReply(String answerReply) {
		this.answerReply = answerReply;
	}
	public Date getAnswerReplyDate() {
		return answerReplyDate;
	}
	public void setAnswerReplyDate(Date answerReplyDate) {
		Date date=new Date();
		this.answerReplyDate = date;
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
	public QAAnswerComment getAnswerCommentAnswerReply() {
		return answerCommentAnswerReply;
	}
	public void setAnswerCommentAnswerReply(QAAnswerComment answerCommentAnswerReply) {
		this.answerCommentAnswerReply = answerCommentAnswerReply;
	}
	
	

}
