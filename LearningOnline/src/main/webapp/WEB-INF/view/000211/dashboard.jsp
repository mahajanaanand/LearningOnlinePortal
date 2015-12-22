<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="/resources/static/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Home | Corlate</title>
	<%@include file="stud_head.jsp"%>
    <section id="blog" class="container">
        <div class="mid-center">
                <div class="left_column_dashboard_box margin-right-40" id="dashboard_left">
                    <div class="profile_photo-container">
						<div class="profile_photo"><img src="${cdnStatic}/images/no_img.png"></div>
						<div class="profile_user_name">ANAND MAHAJAN</div>
					</div>
					 <div class="dashboard_group_contaner">
                        <div class="parent acc_static-icon-white parent_open" id="acc_static">ACCOUNT STATIC</div>
                        <div class="child" id="acc_static_child">
                            <div class="group_summery">
                                <ul>
                                    <li class="sum-que-posted" title="Question Asked By You"><span class="dym_count_exp_dash_value">2526</span></li>
									<li class="sum-ans-posted" title="Answer Posted By You"><span class="dym_count_exp_dash_value">6352</span></li>
									<li class="group_request" title="Group Created By You">My Own Groups<span class="dym_count_exp_dash_value"><a href="Group-Home_Front.html">(3)</a></span></li>
									<li class="group_member" title="Friends Groups You Have Joined">Friend Groups<span class="dym_count_exp_dash_value"><a href="Group-Home_Front.html">(3)</a></span></li>								 <li class="group_member" title="Open Groups You Have Joined">Open Groups<span class="dym_count_exp_dash_value"><a href="Public_Groups_Home.html">(20)</a></span>
									<li class="group_test_attemped" title="Test Attemped By You	"><span class="dym_count_exp_dash_value"><a href="#">(45852)</a></span></li>
									<li class="group_test_created no-border-bottom" title="Test Created By You	"><span class="dym_count_exp_dash_value"><a href="#">(45852)</a></span></li>
                                </ul>
                            </div>
                        </div>
                    </div>
					
					<div class="dashboard_group_contaner">
                        <div class="parent noti-icon-white  parent_open" id="noti_panel">NOTOFICATIONS</div>
                        <div class="child" id="noti_panel_child">
                            <div class="group_summery">
                                <ul>
                                    <li>Seeks to provide that provisions of notification No. 30/2012 - Service Tax dated the 20th June</li>
									<li>Seeks to provide that provisions of notification No. 30/2012 - Service Tax dated the 20th June</li>
									<li>Seeks to provide that provisions of notification No. 30/2012 - Service Tax dated the 20th June</li>
									<li>Seeks to provide that provisions of notification No. 30/2012 - Service Tax dated the 20th June</li>
									<li class="no-border-bottom center"><a href="#" class="show_more">SHOW MORE</a></li>	
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="right_column_dashboard_box margin-right-40">
					<div class="top-container">
						<div class="row row-margin0">
							 <a href="${rootAction}/testList">
								<div class="dashboard_heading">  
									<div class="tile-stats tile dashboard_block_red"> 
										<div class="icon">
											<div class="entypo entypo_qfeed"></div>
										</div> 
										<div class="num">MY TEST HISTORY</div>
										<h3>List of all test taken by you</h3> 
									</div> 
							</div>
							</a>
							 <a href="${applicationRoot}/222200/notification?action=notification">
								<div class="dashboard_heading">  
									<div class="tile-stats tile dashboard_block_light_blue"> 
										<div class="icon">
											<div class="entypo entypo_notification"></div>
										</div> 
										<div class="num">NOTIFICATIONS</div>
										<h3>View unread message & notifications</h3> 
									</div> 
								</div>
							</a>
						</div>
						 <div class="row row-margin0">
							  <a href="${applicationRoot}/000211/generateTest">
								<div class="dashboard_heading">  
									<div class="tile-stats tile dashboard_block_light_yellow"> 
										<div class="icon">
											<div class="entypo entypo_exp_generate_test"></div>
										</div> 
										<div class="num">GENERATE TEST</div>
										<h3>Generate test for group members</h3> 
									</div> 
								 </div>
							 </a>
							  <a href="${applicationRoot}/111112/qaHome">
								<div class="dashboard_heading">  
									<div class="tile-stats tile dashboard_block_black_blue"> 
										<div class="icon">
											<div class="entypo entypo_qa_terminal"></div>
										</div> 
										<div class="num">QA TERMINAL</div>
										<h3>Ask question and give valid answer</h3> 
									</div> 
								  </div>
							 </a>
						</div>
						<div class="row row-margin0">
							<a href="${applicationRoot}/222200/authenticationManager">
								<div class="dashboard_heading">  
									<div class="tile-stats tile dashboard_block_green "> 
										<div class="icon">
											<div class="entypo entypo_account"></div>
										</div> 
										<div class="num">ACCOUNT</div>
										<h3>Edit account profile, change password</h3> 
									</div> 
								 </div>
							</a>
							 <a href="${applicationRoot}/111121/groupSelfFront">
								<div class="dashboard_heading">  
									<div class="tile-stats tile dashboard_block_light_orange"> 
										<div class="icon">
											<div class="entypo entypo_exp_group"></div>
										</div> 
										<div class="num">MY GROUP</div>
										<h3>View your group activity</h3> 
									</div> 
								 </div>
							</a>
						 	
						</div>
					</div>
<!--
					<div class="joined-groups-container">
						
						<a href="#" class="joined-groups">The Java Expert</a>
						<a href="#" class="joined-groups">The Java Expert</a>
						<a href="#" class="joined-groups">The Java Expert</a>
						<a href="#" class="joined-groups">The Java Expert</a>
						<a href="#" class="joined-groups">The Java Expert</a>
						<a href="#" class="joined-groups">The Java Expert</a>
						<a href="#" class="joined-groups">The Java Expert</a>
						<a href="#" class="joined-groups">The Java Expert</a>
						<a href="#" class="joined-groups">The Java Expert</a>
					</div>
-->
                      <div class="wall-post-container">
						<div class="custom-heading"><span>RECENT ACTIVITY</span></div>
						<div class="right-sep-container">
							<div class="middel" id="group-wall">
								<div class="recent-group-activity">
									<div class="activity-row">
										<div class="os-grid-comment os-grid-img-13per">
											<img src="${cdnStatic}/images/man.png" width="65" height="64" class="img-65x64">
										</div>
										<div class="os-grid-content os-grid-comment">
											<div class="activity-content padding-right0">
												<p class=" height-65px" id="cmd-100">I'd use display:inline-block for that. Works much better (dynamic vertical and horizontal dimersions for both container and content).<a  class="add-gup-comment" data-parent-id="100" title="ADD COMMENT" data-comment-type=0></a><a href="#" class="remove-comment" data-comment-remove-id="125478" title="REMOVE COMMENT"></a></p>
												<div class="comment-reply-container">
													<div class="comment-rply-activity">
														<div class="os-grid-comment os-grid-img-10per">
															<img src="${cdnStatic}/images/man.png" width="35" height="34" class="img-35x34">
														</div>
														<div class="os-grid-content os-grid-comment">
															<div class="activity-content width100 padding-right0">
																<p id="cmd-100-1">I'd use display:inline-block for that. Works much better (dynamic vertical and horizontal dimersions for both container and content).<a class="add-gup-comment" data-comment-id="100-1" title="ADD COMMENT" data-comment-type=1></a><a href="#" class="remove-comment" data-comment-remove-id="125478" title="REMOVE COMMENT"></a></p>
															</div>
														</div>
													</div>
													<div class="comment-rply-activity">
														<div class="os-grid-comment os-grid-img-10per">
															<img src="${cdnStatic}/images/man.png" width="35" height="34" class="img-35x34">
														</div>
														<div class="os-grid-content os-grid-comment">
															<div class="activity-content width100 padding-right0">
																<p id="cmd-100-2">I'd use display:inline-block for that. Works much better (dynamic vertical and horizontal dimersions for both I'd use display:inline-block for that. Works much better (dynamic vertical and horizontal dimersions for both I'd use display:inline-block for that. Works much better (dynamic vertical and horizontal dimersions for both I'd use display:inline-block for that. Works much better (dynamic vertical and horizontal dimersions for both container and content).<a class="add-gup-comment" data-comment-id="100-2" title="ADD COMMENT" data-comment-type=1></a><a href="#" class="remove-comment" data-comment-remove-id="125478" title="REMOVE COMMENT"></a></p>
															</div>
														</div>
													</div>
													<div class="comment-rply-activity">
														<div class="os-grid-comment os-grid-img-10per">
															<img src="${cdnStatic}/images/man.png" width="35" height="34" class="img-35x34">
														</div>
														<div class="os-grid-content os-grid-comment">
															<div class="activity-content width100 padding-right0">
																<p id="cmd-100-3">Iâ'd use display:inline-block for that. Works much better (dynamic vertical and horizontal dimersions for both container and content).<a class="add-gup-comment" data-comment-id="100-3" title="ADD COMMENT" data-comment-type=1></a><a href="#" class="remove-comment" data-comment-remove-id="125478" title="REMOVE COMMENT"></a></p>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="recent-group-activity">
									<div class="activity-row no-border-bottom">
										<div class="os-grid-comment os-grid-img-13per">
											<img src="${cdnStatic}/images/man.png" width="65" height="64" class="img-65x64">
										</div>
										<div class="os-grid-content os-grid-comment">
											<div class="activity-content padding-right0">
												<p class="height-65px" id="cmd-101">I'd use display:inline-block for that. Works much better (dynamic vertical and horizontal dimersions for both container and content).<a  class="add-gup-comment" data-parent-id="101" title="ADD COMMENT" data-comment-type=0></a><a href="#" class="remove-comment" data-comment-remove-id="101" title="REMOVE COMMENT"></a></p>
												<div class="comment-reply-container">
													<div class="comment-rply-activity boder-left">
														<div class="os-grid-comment os-grid-img-10per">
															<img src="${cdnStatic}/images/man.png" width="35" height="34" class="img-35x34">
														</div>
														<div class="os-grid-content os-grid-comment">
															<div class="activity-content width100 padding-right0">
																<p id="cmd-101-1">Iâ'd use display:inline-block for that. Works much better (dynamic vertical and horizontal dimersions for both container and content).<a class="add-gup-comment" data-comment-id="101-1" title="ADD COMMENT" data-comment-type=1></a><a href="#" class="remove-comment" data-comment-remove-id="101-1" title="REMOVE COMMENT"></a></p>
															</div>
														</div>
													</div>
													<div class="comment-rply-activity boder-left">
														<div class="os-grid-comment os-grid-img-10per">
															<img src="${cdnStatic}/images/man.png" width="35" height="34" class="img-35x34">
														</div>
														<div class="os-grid-content os-grid-comment">
															<div class="activity-content width100 padding-right0">
																<p id="cmd-101-2">I'd use display:inline-block for that. Works much better (dynamic vertical and horizontal dimersions for both I'd use display:inline-block for that. Works much better (dynamic vertical and horizontal dimersions for both I'd use display:inline-block for that. Works much better (dynamic vertical and horizontal dimersions for both I'd use display:inline-block for that. Works much better (dynamic vertical and horizontal dimersions for both container and content).<a class="add-gup-comment" data-comment-id="101-2" title="ADD COMMENT" data-comment-type=1></a><a href="#" class="remove-comment" data-comment-remove-id="101-2" title="REMOVE COMMENT"></a></p>
															</div>
														</div>
													</div>
													<div class="comment-rply-activity">
														<div class="os-grid-comment os-grid-img-10per boder-left">
															<img src="${cdnStatic}/images/man.png" width="35" height="34" class="img-35x34">
														</div>
														<div class="os-grid-content os-grid-comment">
															<div class="activity-content width100 padding-right0">
																<p id="cmd-101-3">I'd use display:inline-block for that. Works much better (dynamic vertical and horizontal dimersions for both container and content).<a class="add-gup-comment" data-comment-id="101-3" title="ADD COMMENT" data-comment-type=1></a><a href="#" class="remove-comment" data-comment-remove-id="101-3" title="REMOVE COMMENT"></a></p>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
                </div>
        </div>
    </section><!--/#blog-->
    <%@include file="/resources/static/footer.jsp" %>
	<%@include file="/resources/static/javascript.jsp" %>
</body>
</html>