package fss.webportal.lo.domain;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="os_member_role")
public class MemberRole implements Serializable
{
	
	public MemberRole()
	{}
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name="PK_mr_role_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int roleId;
	@Column(name="mr_role_title")
	private String roleTitle;
	@Column(name="mr_status")
	private int status;
	@Column(name="mr_flag")
	private int flag;
	@ManyToMany(mappedBy = "memberRoles")
    public Set<MemberLogin> memberLogin;
		
	public int getRoleId() {
		return roleId;
	}
	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}
	public String getRoleTitle() {
		return roleTitle;
	}
	public void setRoleTitle(String roleTitle) {
		this.roleTitle = roleTitle;
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
	public Set<MemberLogin> getMemberLogin() {
		return memberLogin;
	}
	public void setMemberLogin(Set<MemberLogin> memberLogin) {
		this.memberLogin = memberLogin;
	}
	
}
