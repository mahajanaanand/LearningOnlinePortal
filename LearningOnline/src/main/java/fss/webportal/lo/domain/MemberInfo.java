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
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.codehaus.jackson.annotate.JsonIgnore;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="os_member_info")
public class MemberInfo implements Serializable
{
	
	public MemberInfo()
	{}
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name="PK_mi_member_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int memberId;
	@Column(name="mi_member_id_manual")
	private int memberIdManual=7;
	@Column(name="mi_name")
	private String memberName;
	@Column(name="mi_address")
	private String memberAddress="abc";
	@Column(name="mi_gender")
	private int memberGender;
	@Column(name="mi_email")
	private String memberEmail;
	@DateTimeFormat(pattern="dd/mm/yyyy")
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="mi_dob")
	private Date dateOfBirth;
	@Column(name="mi_country")
	private String country="india";
	@Column(name="mi_state")
	private String state="mp";
	@Column(name="mi_city")
	private String city="indore";
	@Column(name="mi_mobile")
	private String memberMobile;
	@Column(name="mi_security_number")
	private int memberSecurityNumber;
	@DateTimeFormat(pattern="dd/mm/yyyy")
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="mi_register_date")
	private Date memberRegisterDate;
	@Column(name="mi_account_status")
	private int accountStatus=1;
	@Column(name="mi_flag")
	private int flag=1;
	@Column(name="mi_remark")
	private String remark="xyz";
	
	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY,mappedBy="memberInfo", cascade=CascadeType.ALL) 
	private Set<EducationInfo> educationInfo;
	
	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY,mappedBy="memberInfo", cascade=CascadeType.ALL) 
	private Set<OccupationInfo> occupationInfo;
	
	@JsonIgnore
	@OneToOne(fetch = FetchType.LAZY,mappedBy="memberInfoLogin", cascade=CascadeType.ALL)
	private MemberLogin memberLogin;
	
	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY,mappedBy="qfeedsubmissionMember", cascade=CascadeType.ALL) 
	private Set<QFeedSubmission> qFeedSubmissions;
	
	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY,mappedBy="groupEntryMemberInfo", cascade=CascadeType.ALL) 
	private Set<GroupEntry> groupEntries;
			
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "memberInfo")
	private Set<GroupRequest> groupRequests;
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "memberInfoNoti")
	private Set<GroupNotification> groupNotifications;
	
	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY,mappedBy="groupEntryMemberInfo", cascade=CascadeType.ALL) 
	private Set<GroupEntry> groupentry;
	
	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "memberInfoQaquestion")
	private Set<QAQuestion> qaQuestion;

	public int getMemberId() {
		return memberId;
	}

	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}

	public int getMemberIdManual() {
		return memberIdManual;
	}

	public void setMemberIdManual(int memberIdManual) {
		this.memberIdManual = memberIdManual;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getMemberAddress() {
		return memberAddress;
	}

	public void setMemberAddress(String memberAddress) {
		this.memberAddress = memberAddress;
	}

	public int getMemberGender() {
		return memberGender;
	}

	public void setMemberGender(int memberGender) {
		this.memberGender = memberGender;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public Date getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getMemberMobile() {
		return memberMobile;
	}

	public void setMemberMobile(String memberMobile) {
		this.memberMobile = memberMobile;
	}

	public int getMemberSecurityNumber() {
		return memberSecurityNumber;
	}

	public void setMemberSecurityNumber(int memberSecurityNumber) {
		this.memberSecurityNumber = memberSecurityNumber;
	}

	public Date getMemberRegisterDate() {
		return memberRegisterDate;
	}

	public void setMemberRegisterDate(Date memberRegisterDate) {
		this.memberRegisterDate = memberRegisterDate;
	}

	public int getAccountStatus() {
		return accountStatus;
	}

	public void setAccountStatus(int accountStatus) {
		this.accountStatus = accountStatus;
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

	public Set<EducationInfo> getEducationInfo() {
		return educationInfo;
	}

	public void setEducationInfo(Set<EducationInfo> educationInfo) {
		this.educationInfo = educationInfo;
	}

	public Set<OccupationInfo> getOccupationInfo() {
		return occupationInfo;
	}

	public void setOccupationInfo(Set<OccupationInfo> occupationInfo) {
		this.occupationInfo = occupationInfo;
	}

	public MemberLogin getMemberLogin() {
		return memberLogin;
	}

	public void setMemberLogin(MemberLogin memberLogin) {
		this.memberLogin = memberLogin;
	}

	public Set<QFeedSubmission> getqFeedSubmissions() {
		return qFeedSubmissions;
	}

	public void setqFeedSubmissions(Set<QFeedSubmission> qFeedSubmissions) {
		this.qFeedSubmissions = qFeedSubmissions;
	}

	public Set<GroupEntry> getGroupEntries() {
		return groupEntries;
	}

	public void setGroupEntries(Set<GroupEntry> groupEntries) {
		this.groupEntries = groupEntries;
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

	public Set<GroupEntry> getGroupentry() {
		return groupentry;
	}

	public void setGroupentry(Set<GroupEntry> groupentry) {
		this.groupentry = groupentry;
	}

	public Set<QAQuestion> getQaQuestion() {
		return qaQuestion;
	}

	public void setQaQuestion(Set<QAQuestion> qaQuestion) {
		this.qaQuestion = qaQuestion;
	}
	
	
}
