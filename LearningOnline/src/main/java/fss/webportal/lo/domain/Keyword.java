package fss.webportal.lo.domain;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name="os_keyword")
public class Keyword implements Serializable
{
	public Keyword()
	{}
	private static final long SerialVersionUID=1L;
	@Id
	@Column(name="PK_keyword_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int keywordId;
	@Column(name="key_keyword")
	private String keyword;
	@Column(name="key_status")
	private int status;
	@Column(name="key_flag")
	private int flag;
	
	@ManyToMany(fetch = FetchType.LAZY,mappedBy="keywordQaQuestion",cascade=CascadeType.ALL)
	private Set<QAQuestion> qaQuestion;
	
	
	public int getKeywordId() {
		return keywordId;
	}
	public void setKeywordId(int keywordId) {
		this.keywordId = keywordId;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
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
