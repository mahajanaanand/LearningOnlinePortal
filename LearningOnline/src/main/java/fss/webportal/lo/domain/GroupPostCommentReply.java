package fss.webportal.lo.domain;

import java.io.Serializable;
import java.util.Date;

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
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="os_group_reply")
public class GroupPostCommentReply implements Serializable{

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="PK_gr_reply_id")
	private int groupCommentReplyId;
	@Column(name="gr_reply")
	private String groupCommentReply;
	@Column(name="gr_reply_date")
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	@Temporal(TemporalType.TIMESTAMP)
	private Date groupCommentReplyDate;
	@Column(name="gr_status")
	private int status;
	@Column(name="gr_flag")
	private int flag;
	@Column(name="gr_remark")
	private String remark;
	
	@ManyToOne(cascade=CascadeType.ALL,fetch=FetchType.LAZY)  
	@JoinTable(name="os_group_comment_reply",  
	joinColumns={@JoinColumn(name="FK_reply_id",referencedColumnName="PK_gr_reply_id")},  
	inverseJoinColumns={@JoinColumn(name="FK_comment_id",referencedColumnName="PK_gc_comment_id")})
	private GroupPostComment groupPostComment;

	public GroupPostCommentReply() {
		super();
	}

	public int getGroupCommentReplyId() {
		return groupCommentReplyId;
	}

	public void setGroupCommentReplyId(int groupCommentReplyId) {
		this.groupCommentReplyId = groupCommentReplyId;
	}

	public String getGroupCommentReply() {
		return groupCommentReply;
	}

	public void setGroupCommentReply(String groupCommentReply) {
		this.groupCommentReply = groupCommentReply;
	}

	public Date getGroupCommentReplyDate() {
		return groupCommentReplyDate;
	}

	public void setGroupCommentReplyDate(Date groupCommentReplyDate) {
		this.groupCommentReplyDate = groupCommentReplyDate;
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

	public GroupPostComment getGroupPostComment() {
		return groupPostComment;
	}

	public void setGroupPostComment(GroupPostComment groupPostComment) {
		this.groupPostComment = groupPostComment;
	}
	
	
	
}
