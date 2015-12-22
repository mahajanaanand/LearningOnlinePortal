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
	<%@include file="editor_head.jsp"%>	
    <section id="blog" class="container">
        <div class="mid-center">
                <div class="left_column_dashboard_box margin-right-40" id="dashboard_left">
                    <div class="profile_photo-container">
						<div class="profile_photo"><img src="${cdnStatic}/images/no_img.png"></div>
						<div class="profile_user_name">ANAND MAHAJAN</div>
					</div>
					 <div class="dashboard_group_contaner">
                        <div class="parent acc_static-icon-white parent_open" id="acc_static">QFEED STATIC</div>
                        <div class="child" id="acc_static_child">
                            <div class="group_summery">
                                <ul>
                                    <li class="edt-qfeed-pending"><span class="dym_count_exp_dash_value">(0001)</span></li>
									<li class="edt-qfeed-downloaded"><span class="dym_count_exp_dash_value">(125485)</span></li>
									<li class="edt-qfeed-rejected"><span class="dym_count_exp_dash_value">(155485)</span></li>
									<li class="edt-qfeed-approved no-border-bottom"><span class="dym_count_exp_dash_value">(2569485)</span></li>
                                </ul>
                            </div>
                        </div>
                    </div>
					<div class="dashboard_group_contaner">
						<div class="parent acc_static-icon-white parent_open" id="mcq_static">MCQ STATIC</div>
                        <div class="child" id="mcq_static_child">
							<div class="group_summery">
								<ul>
									<li class="edt-mcq-feed no-border-bottom"><span class="dym_count_exp_dash_value">(2569485)</span></li>
								</ul>
							</div>
						</div>
					</div>
                </div>
                <div class="right_column_dashboard_box margin-right-40">
					<div class="top-container">
						<div class="row row-margin0">
							 <a href="addCategory">
								<div class="dashboard_heading">  
									<div class="tile-stats tile dashboard_block_red"> 
										<div class="icon">
											<div class="entypo entypo_qfeed"></div>
										</div> 
										<div class="num">CATEGORY</div>
										<h3>Add, Remove and Update Categories</h3> 
									</div> 
								</div>
							</a>
							 <a href="editorPanel">
								<div class="dashboard_heading">  
									<div class="tile-stats tile dashboard_block_light_blue"> 
										<div class="icon">
											<div class="entypo entypo_edt_panel"></div>
										</div> 
										<div class="num">MY PANEL</div>
										<h3>Check QFeed, and perform action</h3> 
									</div> 
								 </div>
							</a>
						</div>
						 <div class="row row-margin0">
							   <a href="Notification.html">
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
							  <a href="questionFeed">
								<div class="dashboard_heading">  
									<div class="tile-stats tile dashboard_block_black_blue"> 
										<div class="icon">
											<div class="entypo entypo_qa_terminal"></div>
										</div> 
										<div class="num">QUESTION FEEDING</div>
										<h3>Add MCQ to the database</h3> 
									</div> 
								</div>
							 </a>
						</div>
						<div class="row row-margin0">
							<a href="questionRevisionPenal">
								<div class="dashboard_heading">  
									<div class="tile-stats tile dashboard_block_black_blue"> 
										<div class="icon">
											<div class="entypo entypo_qa_terminal"></div>
										</div> 
										<div class="num">QUESTION REVISION</div>
										<h3>Find question in database before feed</h3> 
									</div> 
								</div>
							 </a>
							 <a href="Authentication_Manager.html">
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
						</div>
					</div>
					<div class="middel">
							<div class="custom-heading"><span>NOTIFICATION & MESSAGES</span></div>
							<div class="recent-msg-noti-activity">
								<ul>
									<li>Seeks to provide that provisions of notification No. 30/2012 - Service Tax dated the 20th June</li>
									<li>Seeks to provide that provisions of notification No. 30/2012 - Service Tax dated the 20th June</li>
									<li>Seeks to provide that provisions of notification No. 30/2012 - Service Tax dated the 20th June</li>
									<li>Seeks to provide that provisions of notification No. 30/2012 - Service Tax dated the 20th June</li>
									<li>Seeks to provide that provisions of notification No. 30/2012 - Service Tax dated the 20th June</li>
									<li>Seeks to provide that provisions of notification No. 30/2012 - Service Tax dated the 20th June</li>
									<li>Seeks to provide that provisions of notification No. 30/2012 - Service Tax dated the 20th June</li>
									<li>Seeks to provide that provisions of notification No. 30/2012 - Service Tax dated the 20th June</li>
									<li>Seeks to provide that provisions of notification No. 30/2012 - Service Tax dated the 20th June</li>
									<li>Seeks to provide that provisions of notification No. 30/2012 - Service Tax dated the 20th June</li>
								</ul>
							</div>
						</div>
                </div>
        </div>
    </section><!--/#blog-->
	    <%@include file="/resources/static/footer.jsp" %>
	<%@include file="/resources/static/javascript.jsp" %>
</body>
</html>