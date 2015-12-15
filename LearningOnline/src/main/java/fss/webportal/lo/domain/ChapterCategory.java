package fss.webportal.lo.domain;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="os_chapter_cat")
public class ChapterCategory implements Serializable
{
	private static final long serialVersionUID = 1L;
	@Id
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
	
	
	
	
	
	

}
