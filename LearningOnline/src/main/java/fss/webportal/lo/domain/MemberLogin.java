package fss.webportal.lo.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

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
	@GenericGenerator(name = "generator", strategy = "foreign",parameters = @Parameter(name = "property", value = "memberinfo"))
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
	private MemberInfo memberinfo;
	
	
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
	
}
