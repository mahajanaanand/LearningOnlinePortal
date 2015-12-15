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

import org.codehaus.jackson.annotate.JsonIgnore;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="os_group_request")
public class GroupRequest implements Serializable{

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="PK_gr_request_id")
	private int groupRequestId;
	@Column(name="gr_request_text")
	private String groupRequestText;
	@Column(name="gr_request_date")
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	@Temporal(TemporalType.TIMESTAMP)
	private Date groupRequestDate;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "FK_group_id")
	private GroupEntry groupEntry;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "FK_member_id")
	
	private MemberInfo memberInfo;
	@Column(name="gr_request_type")
	private int groupRequestType;
	@Column(name="gr_status")
	private int status;
	@Column(name="gr_flag")
	private int flag;
	@Column(name="gr_remark")
	private String remark;
	
	public GroupRequest() {
		super();
	}
	public int getGroupRequestId() {
		return groupRequestId;
	}
	public void setGroupRequestId(int groupRequestId) {
		this.groupRequestId = groupRequestId;
	}
	public String getGroupRequestText() {
		return groupRequestText;
	}
	public void setGroupRequestText(String groupRequestText) {
		this.groupRequestText = groupRequestText;
	}
	public Date getGroupRequestDate() {
		return groupRequestDate;
	}
	public void setGroupRequestDate(Date groupRequestDate) {
		this.groupRequestDate = groupRequestDate;
	}
	public GroupEntry getGroupEntry() {
		return groupEntry;
	}
	public void setGroupEntry(GroupEntry groupEntry) {
		this.groupEntry = groupEntry;
	}
	public MemberInfo getMemberInfo() {
		return memberInfo;
	}
	public void setMemberInfo(MemberInfo memberInfo) {
		this.memberInfo = memberInfo;
	}
	public int getGroupRequestType() {
		return groupRequestType;
	}
	public void setGroupRequestType(int groupRequestType) {
		this.groupRequestType = groupRequestType;
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
	
	
}
