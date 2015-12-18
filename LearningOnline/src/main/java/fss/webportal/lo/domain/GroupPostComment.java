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
@Table(name="os_group_comment")
public class GroupPostComment implements Serializable{

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="PK_gc_comment_id")
	private int groupCommentId;
	@Column(name="gc_comment")
	private String groupComment;
	@Column(name="gc_comment_date")
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	@Temporal(TemporalType.TIMESTAMP)
	private Date groupCommentDate;
	@Column(name="gc_status")
	private int status;
	@Column(name="gc_flag")
	private int flag;
	@Column(name="gc_remark")
	private String remark;
	
	@ManyToOne(cascade=CascadeType.ALL,fetch=FetchType.LAZY)  
	@JoinTable(name="os_group_post_comment",  
	joinColumns={@JoinColumn(name="FK_comment_id",referencedColumnName="PK_gc_comment_id")},  
	inverseJoinColumns={@JoinColumn(name="FK_post_id",referencedColumnName="PK_gp_post_id")})
	private GroupPost groupPost;
	
	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY,mappedBy="groupPostComment", cascade=CascadeType.ALL) 
	private Set<GroupPostCommentReply> groupPostCommentReplies;

	public GroupPostComment() {
		super();
	}

	public int getGroupCommentId() {
		return groupCommentId;
	}

	public void setGroupCommentId(int groupCommentId) {
		this.groupCommentId = groupCommentId;
	}

	public String getGroupComment() {
		return groupComment;
	}

	public void setGroupComment(String groupComment) {
		this.groupComment = groupComment;
	}

	public Date getGroupCommentDate() {
		return groupCommentDate;
	}

	public void setGroupCommentDate(Date groupCommentDate) {
		this.groupCommentDate = groupCommentDate;
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

	public GroupPost getGroupPost() {
		return groupPost;
	}

	public void setGroupPost(GroupPost groupPost) {
		this.groupPost = groupPost;
	}

	public Set<GroupPostCommentReply> getGroupPostCommentReplies() {
		return groupPostCommentReplies;
	}

	public void setGroupPostCommentReplies(
			Set<GroupPostCommentReply> groupPostCommentReplies) {
		this.groupPostCommentReplies = groupPostCommentReplies;
	}
	
}
