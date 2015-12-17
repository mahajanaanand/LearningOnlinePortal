package fss.webportal.lo.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="os_test_static")
public class TestStatic implements Serializable
{
	public TestStatic()
	{}
	private static final long SerialVersionUID=1L;
	@Id
	@Column(name="PK_mt_test_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int testId;
	@Column(name="mt_no_of_view")
	private int numberOfView;
	@Column(name="mt_no_of_attempted")
	private int numberOfAttempted;
	@Column(name="mt_scorer")
	private int scorer;
	public int getTestId() {
		return testId;
	}
	public void setTestId(int testId) {
		this.testId = testId;
	}
	public int getNumberOfView() {
		return numberOfView;
	}
	public void setNumberOfView(int numberOfView) {
		this.numberOfView = numberOfView;
	}
	public int getNumberOfAttempted() {
		return numberOfAttempted;
	}
	public void setNumberOfAttempted(int numberOfAttempted) {
		this.numberOfAttempted = numberOfAttempted;
	}
	public int getScorer() {
		return scorer;
	}
	public void setScorer(int scorer) {
		this.scorer = scorer;
	}
	
	

}
