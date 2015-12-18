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

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name="os_group_entry")
public class GroupEntry implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="PK_ge_group_id")
	private int groupId;
	@Column(name="ge_group_id_manual")
	private Long groupIdManual;
	@Column(name="ge_group_title")
	private String groupTitle;
	@Column(name="ge_group_about")
	private String groupAbout;
	@Column(name="ge_group_type")
	private int groupType;
	@Column(name="ge_group_visibility")
	private int groupVisibility;
	@Column(name="ge_group_admin")
	private int groupAdmin;
	@Column(name="ge_created_date")
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	@Temporal(TemporalType.TIMESTAMP)
	private Date groupCreateDate;
	@Column(name="ge_group_profile_img_path")
	private String groupProfileImgPath;
	@Column(name="ge_status")
	private int status;
	@Column(name="ge_flag")
	private int flag;
	@Column(name="ge_remark")
	private String remark;
	
	@ManyToOne(cascade=CascadeType.ALL,fetch=FetchType.LAZY)  
	@JoinTable(name="os_group_member",  
	joinColumns={@JoinColumn(name="FK_group_id",referencedColumnName="PK_ge_group_id")},  
	inverseJoinColumns={@JoinColumn(name="FK_member_id",referencedColumnName="PK_mi_member_id")})
	private MemberInfo groupEntryMemberInfo;
	
	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY,mappedBy="groupEntryGroupPost", cascade=CascadeType.ALL) 
	private Set<GroupPost> groupPosts;
	
	@ManyToOne(cascade=CascadeType.ALL,fetch=FetchType.LAZY)  
	@JoinTable(name="os_category_class_group",  
	joinColumns={@JoinColumn(name="FK_group_id",referencedColumnName="PK_ge_group_id")},  
	inverseJoinColumns={@JoinColumn(name="FK_category_class_id",referencedColumnName="PK_category_class_id")})
	private CategoryClass categoryClass; 
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "groupEntry")
	private Set<GroupRequest> groupRequests; 
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "groupEntryNoti")
	private Set<GroupNotification> groupNotifications;
	
	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "groupEntry")
	private Set<MCQTest> mcqTest;
	
	
	
	public GroupEntry() {
	super();
	}

	public int getGroupId() {
		return groupId;
	}

	public void setGroupId(int groupId) {
		this.groupId = groupId;
	}

	public Long getGroupIdManual() {
		return groupIdManual;
	}

	public void setGroupIdManual(Long groupIdManual) {
		this.groupIdManual = groupIdManual;
	}

	public String getGroupTitle() {
		return groupTitle;
	}

	public void setGroupTitle(String groupTitle) {
		this.groupTitle = groupTitle;
	}

	public String getGroupAbout() {
		return groupAbout;
	}

	public void setGroupAbout(String groupAbout) {
		this.groupAbout = groupAbout;
	}

	public int getGroupType() {
		return groupType;
	}

	public void setGroupType(int groupType) {
		this.groupType = groupType;
	}

	public int getGroupVisibility() {
		return groupVisibility;
	}

	public void setGroupVisibility(int groupVisibility) {
		this.groupVisibility = groupVisibility;
	}

	public int getGroupAdmin() {
		return groupAdmin;
	}

	public void setGroupAdmin(int groupAdmin) {
		this.groupAdmin = groupAdmin;
	}

	public Date getGroupCreateDate() {
		return groupCreateDate;
	}

	public void setGroupCreateDate(Date groupCreateDate) {
		this.groupCreateDate = groupCreateDate;
	}

	public String getGroupProfileImgPath() {
		return groupProfileImgPath;
	}

	public void setGroupProfileImgPath(String groupProfileImgPath) {
		this.groupProfileImgPath = groupProfileImgPath;
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
	public Set<GroupPost> getGroupPosts() {
		return groupPosts;
	}

	public void setGroupPosts(Set<GroupPost> groupPosts) {
		this.groupPosts = groupPosts;
	}

	public CategoryClass getCategoryClass() {
		return categoryClass;
	}

	public void setCategoryClass(CategoryClass categoryClass) {
		this.categoryClass = categoryClass;
	}

	public Set<GroupRequest> getGroupRequests() {
		return groupRequests;
	}

	public void setGroupRequests(Set<GroupRequest> groupRequests) {
		this.groupRequests = groupRequests;
	}

	

	public Set<GroupNotification> getGroupNotifications() {
		return groupNotifications;
	}

	public void setGroupNotifications(Set<GroupNotification> groupNotifications) {
		this.groupNotifications = groupNotifications;
	}

	public MemberInfo getGroupEntryMemberInfo() {
		return groupEntryMemberInfo;
	}

	public void setGroupEntryMemberInfo(MemberInfo groupEntryMemberInfo) {
		this.groupEntryMemberInfo = groupEntryMemberInfo;
	}

	public Set<MCQTest> getMcqTest() {
		return mcqTest;
	}

	public void setMcqTest(Set<MCQTest> mcqTest) {
		this.mcqTest = mcqTest;
	} 
	
	
	
	
}
