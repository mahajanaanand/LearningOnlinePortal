package fss.webportal.lo.domain;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import javax.persistence.JoinColumn;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

@Entity
@Table(name="os_member_login")
public class MemberLogin implements Serializable
{
	public MemberLogin()
	{
		
	}
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name="PK_mi_member_id")
	@GenericGenerator(name = "generator", strategy = "foreign",parameters = @Parameter(name = "property", value = "memberInfoLogin"))
	@GeneratedValue(generator = "generator")
	private int memberId;
	@Column(name="ml_password")
	private String password;
	@Column(name="ml_status")
	private int status;
	@Column(name="ml_flag")
	private int flag;
	
	@OneToOne(fetch = FetchType.LAZY)
	@PrimaryKeyJoinColumn
	private MemberInfo memberInfoLogin;
	
	@ManyToMany(cascade=CascadeType.ALL,fetch=FetchType.EAGER)  
	@JoinTable(name="os_member_loin_role",  
	joinColumns={@JoinColumn(name="FK_member_id",referencedColumnName="PK_mi_member_id")},  
	inverseJoinColumns={@JoinColumn(name="FK_role_id",referencedColumnName="PK_mr_role_id")})
	private Set<MemberRole> memberRoles;
	
	
	public int getMemberId() {
		return memberId;
	}
	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
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
	public MemberInfo getMemberInfoLogin() {
		return memberInfoLogin;
	}
	public void setMemberInfoLogin(MemberInfo memberInfoLogin) {
		this.memberInfoLogin = memberInfoLogin;
	}
	public Set<MemberRole> getMemberRoles() {
		return memberRoles;
	}
	public void setMemberRoles(Set<MemberRole> memberRoles) {
		this.memberRoles = memberRoles;
	}
	
}
