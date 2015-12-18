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
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonIgnore;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="os_group_post")
public class GroupPost implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="PK_gp_post_id")
	private int groupPostId;
	@Column(name="gp_post")
	private String groupPost;
	@Column(name="gp_post_date")
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	@Temporal(TemporalType.TIMESTAMP)
	private Date groupPostDate;
	@Column(name="gp_status")
	private int status;
	@Column(name="gp_flag")
	private int flag;
	@Column(name="gp_remark")
	private String remark;
	
	@ManyToOne(cascade=CascadeType.ALL,fetch=FetchType.LAZY)  
	@JoinTable(name="os_group_entry_post",  
	joinColumns={@JoinColumn(name="FK_post_id",referencedColumnName="PK_gp_post_id")},  
	inverseJoinColumns={@JoinColumn(name="FK_group_id",referencedColumnName="PK_ge_group_id")})
	private GroupEntry groupEntryGroupPost;
	
	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY,mappedBy="groupPost", cascade=CascadeType.ALL) 
	private Set<GroupPostComment> groupPostComments;

	public GroupPost() {
		super();
	}

	public int getGroupPostId() {
		return groupPostId;
	}

	public void setGroupPostId(int groupPostId) {
		this.groupPostId = groupPostId;
	}

	public String getGroupPost() {
		return groupPost;
	}

	public void setGroupPost(String groupPost) {
		this.groupPost = groupPost;
	}

	public Date getGroupPostDate() {
		return groupPostDate;
	}

	public void setGroupPostDate(Date groupPostDate) {
		this.groupPostDate = groupPostDate;
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

	public GroupEntry getGroupEntryGroupPost() {
		return groupEntryGroupPost;
	}

	public void setGroupEntryGroupPost(GroupEntry groupEntryGroupPost) {
		this.groupEntryGroupPost = groupEntryGroupPost;
	}

	public Set<GroupPostComment> getGroupPostComments() {
		return groupPostComments;
	}

	public void setGroupPostComments(Set<GroupPostComment> groupPostComments) {
		this.groupPostComments = groupPostComments;
	}
	
	
}
