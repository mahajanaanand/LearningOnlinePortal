package fss.webportal.lo.domain;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import com.fasterxml.jackson.annotation.JsonIgnore;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="os_group_notofication")
public class GroupNotification implements Serializable{

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="PK_gn_noti_id")
	private int groupNotiId;
	@Column(name="gn_noti_text")
	private String groupNotiText;

	@Column(name="gn_noti_date")
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	@Temporal(TemporalType.TIMESTAMP)
	private Date groupNotiDate;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "FK_group_id")
	private GroupEntry groupEntryNoti;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "FK_member_id")
	private MemberInfo memberInfoNoti;
	
	@Column(name="gn_status")
	private int status;
	
	@Column(name="gn_flag")
	private int flag;
	
	@Column(name="gn_remark")
	private String remark;

	public GroupNotification() {
		super();
	}

	public int getGroupNotiId() {
		return groupNotiId;
	}

	public void setGroupNotiId(int groupNotiId) {
		this.groupNotiId = groupNotiId;
	}

	public String getGroupNotiText() {
		return groupNotiText;
	}

	public void setGroupNotiText(String groupNotiText) {
		this.groupNotiText = groupNotiText;
	}

	public Date getGroupNotiDate() {
		return groupNotiDate;
	}

	public void setGroupNotiDate(Date groupNotiDate) {
		this.groupNotiDate = groupNotiDate;
	}

	public GroupEntry getGroupEntryNoti() {
		return groupEntryNoti;
	}

	public void setGroupEntryNoti(GroupEntry groupEntryNoti) {
		this.groupEntryNoti = groupEntryNoti;
	}

	public MemberInfo getMemberInfoNoti() {
		return memberInfoNoti;
	}

	public void setMemberInfoNoti(MemberInfo memberInfoNoti) {
		this.memberInfoNoti = memberInfoNoti;
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
