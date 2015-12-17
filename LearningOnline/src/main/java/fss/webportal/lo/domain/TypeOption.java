package fss.webportal.lo.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="os_type_option")
public class TypeOption implements Serializable 
{
	
	public TypeOption()
	{}
	private static final long SerialVersionUID=1L;
	@Id
	@Column(name="PK_to_type_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int typeId;
	@Column(name="to_type")
	private String type;
	@Column(name="to_status")
	private int status;
	@Column(name="to_flag")
	private int flag;
	public int getTypeId() {
		return typeId;
	}
	public void setTypeId(int typeId) {
		this.typeId = typeId;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
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
