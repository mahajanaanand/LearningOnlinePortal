package fss.webportal.lo.domain;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="os_topic_cat")
public class TopicCategory implements Serializable
{
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="PK_toc_topic_id")
	private int topicId;
	@Column(name="toc_title")
	private String topicTitle;
	@Column(name="toc_modify_date")
	private Date topicModifyDate;
	@Column(name="toc_status")
	private int status;
	@Column(name="toc_flag")
	private int flag;
	@Column(name="toc_remark")
	private String remark;
	
	public TopicCategory() {
		
	}

	public int getTopicId() {
		return topicId;
	}

	public void setTopicId(int topicId) {
		this.topicId = topicId;
	}

	public String getTopicTitle() {
		return topicTitle;
	}

	public void setTopicTitle(String topicTitle) {
		this.topicTitle = topicTitle;
	}

	public Date getTopicModifyDate() {
		return topicModifyDate;
	}

	public void setTopicModifyDate(Date topicModifyDate) {
		this.topicModifyDate = topicModifyDate;
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
