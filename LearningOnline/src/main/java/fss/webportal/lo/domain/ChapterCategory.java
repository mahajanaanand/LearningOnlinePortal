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
@Table(name="os_chapter_cat")
public class ChapterCategory implements Serializable
{
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="PK_chc_chpter_id")
	private int chapterId;
	@Column(name="chc_title")
	private String chapterTitle;
	@Column(name="chc_modify_date")
	private Date chapterModifyDate;
	@Column(name="chc_status")
	private int status;
	@Column(name="chc_flag")
	private int flag;
	@Column(name="chc_remark")
	private String remark;
	
	public ChapterCategory(){
		
	}

	public int getChapterId() {
		return chapterId;
	}

	public void setChapterId(int chapterId) {
		this.chapterId = chapterId;
	}

	public String getChapterTitle() {
		return chapterTitle;
	}

	public void setChapterTitle(String chapterTitle) {
		this.chapterTitle = chapterTitle;
	}

	public Date getChapterModifyDate() {
		return chapterModifyDate;
	}

	public void setChapterModifyDate(Date chapterModifyDate) {
		this.chapterModifyDate = chapterModifyDate;
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
