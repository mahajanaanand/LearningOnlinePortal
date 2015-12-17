package fss.webportal.lo.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="os_level_text")
public class LevelOption implements Serializable
{
	public LevelOption(){}
	
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="PK_lo_level_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int levelId;
	@Column(name="lo_level_option")
	private String levelOption;
	@Column(name="lo_satus")
	private int status;
	@Column(name="lo_flag")
	private int flag;
	
	
	public int getLevelId() {
		return levelId;
	}
	public void setLevelId(int levelId) {
		this.levelId = levelId;
	}
	public String getLevelOption() {
		return levelOption;
	}
	public void setLevelOption(String levelOption) {
		this.levelOption = levelOption;
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
