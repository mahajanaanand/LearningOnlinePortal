package fss.webportal.lo.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="os_category_class")
public class CategoryClass 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="PK_category_class_id")
	private int categoryClassId;
	@Column(name="cc_count_question")
	private int countQuestion;
	@Column(name="cc_count_answer")
	private int countAnswer;
	
	
	
	

	
	public CategoryClass()
	{
		
		
	}

}
