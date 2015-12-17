package fss.webportal.lo.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="os_dashboard_static")
public class DashboardStatic implements Serializable 
{
	public DashboardStatic()
	{}
	private static final long SerialVersionUID=1L;
	@Id
	@Column(name="PK_mi_member_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int memberId;
	
	@Column(name="ds_count_my_own_group")
	private int countMyOwnGroup;
	
	@Column(name="ds_count_friends_group")
	private int countFriendsGroup;
	
	@Column(name="ds_count_open_group")
	private int countOpenGroup;
	
	@Column(name="ds_count_question_asked")
	private int countQuestionAsked;
	
	@Column(name="ds_count_answer_posted")
	private int countAnswerPosted;
	
	@Column(name="ds_count_test_viewed_by_me")
	private int countTestViewByMe;
	
	@Column(name="ds_count_test_attempted_by_me")
	private int countTestAttemptedByMe;
	
	@Column(name="ds_count_test_created_by_me")
	private int countTestCreatedByMe;
	
	@Column(name="ds_count_qfeed_ submitted")
	private int countQFeedSubmitted;
	
	@Column(name="ds_count_mcq_submitted")
	private int countMcqSubmitted;
	
	@Column(name="ds_count_apply_on")
	private int countApplyOn;

	public int getMemberId() {
		return memberId;
	}

	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}

	public int getCountMyOwnGroup() {
		return countMyOwnGroup;
	}

	public void setCountMyOwnGroup(int countMyOwnGroup) {
		this.countMyOwnGroup = countMyOwnGroup;
	}

	public int getCountFriendsGroup() {
		return countFriendsGroup;
	}

	public void setCountFriendsGroup(int countFriendsGroup) {
		this.countFriendsGroup = countFriendsGroup;
	}

	public int getCountOpenGroup() {
		return countOpenGroup;
	}

	public void setCountOpenGroup(int countOpenGroup) {
		this.countOpenGroup = countOpenGroup;
	}

	public int getCountQuestionAsked() {
		return countQuestionAsked;
	}

	public void setCountQuestionAsked(int countQuestionAsked) {
		this.countQuestionAsked = countQuestionAsked;
	}

	public int getCountAnswerPosted() {
		return countAnswerPosted;
	}

	public void setCountAnswerPosted(int countAnswerPosted) {
		this.countAnswerPosted = countAnswerPosted;
	}

	public int getCountTestViewByMe() {
		return countTestViewByMe;
	}

	public void setCountTestViewByMe(int countTestViewByMe) {
		this.countTestViewByMe = countTestViewByMe;
	}

	public int getCountTestAttemptedByMe() {
		return countTestAttemptedByMe;
	}

	public void setCountTestAttemptedByMe(int countTestAttemptedByMe) {
		this.countTestAttemptedByMe = countTestAttemptedByMe;
	}

	public int getCountTestCreatedByMe() {
		return countTestCreatedByMe;
	}

	public void setCountTestCreatedByMe(int countTestCreatedByMe) {
		this.countTestCreatedByMe = countTestCreatedByMe;
	}

	public int getCountQFeedSubmitted() {
		return countQFeedSubmitted;
	}

	public void setCountQFeedSubmitted(int countQFeedSubmitted) {
		this.countQFeedSubmitted = countQFeedSubmitted;
	}

	public int getCountMcqSubmitted() {
		return countMcqSubmitted;
	}

	public void setCountMcqSubmitted(int countMcqSubmitted) {
		this.countMcqSubmitted = countMcqSubmitted;
	}

	public int getCountApplyOn() {
		return countApplyOn;
	}

	public void setCountApplyOn(int countApplyOn) {
		this.countApplyOn = countApplyOn;
	}
	
	

	

}
