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
	<%@include file="group_head.jsp"%>  
    <section id="blog" class="container bg-clr-border">
        <div class="mid-center">
            <div class="group_home_top">
               <div class="left_column_dashboard_box margin-right-40" id="dashboard_left">
                    <div class="profile_photo-container">
						<div class="profile_photo"><img src="${cdnStatic}/images/no_img.png"></div>
						<div class="profile_user_name">ANAND MAHAJAN</div>
					</div>
				   <div class="dashboard_group_contaner">
                        <div class="parent create-group-white parent_open" id="groups_created_panel">FRIENDS GROUPS</div>
                        <div class="child" id="groups_created_panel_child">
                            <div class="group_summery">
                                <ul>
									<ul>
									<li class="letter S"><a href="#">Spring Samrat</a><a href="#" class="remove-comment top-posi right" data-comment-remove-id="125478" title="REMOVE GROUP"></a></li>
									<li class="letter A"><a href="#">Angular Angle</a><a href="#" class="remove-comment top-posi right" data-comment-remove-id="125478" title="REMOVE GROUP"></a></li>
                                    <li class="letter H"><a href="#">Hibernate Hyper</a><a href="#" class="remove-comment top-posi right" data-comment-remove-id="125478" title="REMOVE GROUP"></a></li>
									<li class="no-border-bottom"><a class="group_request" href="Create_Group.html">Join Group</a></li>	
                                </ul>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
				<div class="right_column_group_wall margin-right-40">
					<div class="grup-write-post-main-container">
						<div class="group-write-post-container">
							<div class="qa-give-ans-textarea-container">
								<div class="input_text_box_panel width100">
								   <div class="oe-textarea-container-GC-long">
									   <textarea class="oe-textarea-GC-long" placeholder="Say Somthing" id="say_something"></textarea>
								   </div>
								</div>
							</div> 
						   <div class="group-write-post-button margin-top10">
								<a class="custom_button_blank share left	">SHARE</a>
							</div>
						</div>
					</div>
					<div class="group-setting-container no-display" id="group_default_setting">
						<div class="top-manu-tab-button-container">
							<span class="custom_menu-button tab-active left" id="tab_create_gup">DEFAULT GROUP SETTING</span>
<!--							<span class="custom_menu-button left" id="tab_find_gup">FIND GROUP</span>-->
						</div>
						<div class="tab-panel">
							<div class="check_box">
								<p>Please set the default group for your account wall as well as group wall.</p>
								<a class="">Spring Samrat</a>
								<a class="">Hibernate Hyper</a>
								<a class="">JPA Joo</a>
								<a class="">Java Jani</a>
								<a class="">Perl Photo</a>
								<a class="">Angular Angle</a>
								<a class="">The Java Expert</a>
							</div>
							<div class="input_text_box_panel"> 
								<a class="custom_button_blank_small right" id="setting-close">CANCEL</a>
								<a class="custom_button_blank_small right">RESET</a>	
								<a class="custom_button_blank_small right">SUBMIT</a>	
							</div>
						</div>
					</div>
					<div class="wall-post-container">
						<div class="custom-heading"><span>THE JAVA EXPERT WALL</span></div>
						<div class="right-sep-container bg-FFF">
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
													<div class="comment-rply-activity boder-left">
														<div class="os-grid-comment os-grid-img-10per">
															<img src="${cdnStatic}/images/man.png" width="35" height="34" class="img-35x34">
														</div>
														<div class="os-grid-content os-grid-comment">
															<div class="activity-content width100 padding-right0">
																<p id="cmd-100-1">I'd use display:inline-block for that. Works much better (dynamic vertical and horizontal dimersions for both container and content).<a class="add-gup-comment" data-comment-id="100-1" title="ADD COMMENT" data-comment-type=1></a><a href="#" class="remove-comment" data-comment-remove-id="125478" title="REMOVE COMMENT"></a></p>
															</div>
														</div>
													</div>
													<div class="comment-rply-activity boder-left">
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
														<div class="os-grid-comment os-grid-img-10per boder-left">
															<img src="${cdnStatic}/images/man.png" width="35" height="34" class="img-35x34">
														</div>
														<div class="os-grid-content os-grid-comment">
															<div class="activity-content width100 padding-right0">
																<p id="cmd-100-3">I'd use display:inline-block for that. Works much better (dynamic vertical and horizontal dimersions for both container and content).<a class="add-gup-comment" data-comment-id="100-3" title="ADD COMMENT" data-comment-type=1></a><a href="#" class="remove-comment" data-comment-remove-id="125478" title="REMOVE COMMENT"></a></p>
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
													<div class="comment-rply-activity">
														<div class="os-grid-comment os-grid-img-10per">
															<img src="${cdnStatic}/images/man.png" width="35" height="34" class="img-35x34">
														</div>
														<div class="os-grid-content os-grid-comment">
															<div class="activity-content width100 padding-right0">
																<p id="cmd-101-1">I'd use display:inline-block for that. Works much better (dynamic vertical and horizontal dimersions for both container and content).<a class="add-gup-comment" data-comment-id="101-1" title="ADD COMMENT" data-comment-type=1></a><a href="#" class="remove-comment" data-comment-remove-id="101-1" title="REMOVE COMMENT"></a></p>
															</div>
														</div>
													</div>
													<div class="comment-rply-activity">
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
														<div class="os-grid-comment os-grid-img-10per">
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
				<div class="left_column_dashboard_box left"  id="dashboard_right">
					<div class="dashboard_group_contaner">
                        <div class="parent rev-req-icon-white parent_open" id="rev_req_panel">REVISION REQUEST</div>
                        <div class="child" id="rev_req_panel_child">
                            <div class="group_summery">
                                <ul>
                                    <li>I'd use display:inline-block for that. Works much better (dynamic vertical and horizontal dimersions for both container and content).<a href="#" class="remove-comment" data-comment-remove-id="125478" title="REMOVE COMMENT"></a></li>
									<li>I'd use display:inline-block for that. Works much better (dynamic vertical and horizontal dimersions for both container and content).<a href="#" class="remove-comment" data-comment-remove-id="125478" title="REMOVE COMMENT"></a></li>
									<li>I'd use display:inline-block for that. Works much better (dynamic vertical and horizontal dimersions for both container and content).<a href="#" class="remove-comment" data-comment-remove-id="125478" title="REMOVE COMMENT"></a></li>
									<li>I'd use display:inline-block for that. Works much better (dynamic vertical and horizontal dimersions for both container and content).<a href="#" class="remove-comment" data-comment-remove-id="125478" title="REMOVE COMMENT"></a></li>
									<li class="no-border-bottom center"><a href="#" class="show_more">SHOW MORE</a></li>	
                                </ul>
                            </div>
                        </div>
                    </div>
					<div class="dashboard_group_contaner">
                        <div class="parent noti-icon-white parent_open" id="noti_panel">NOTOFICATIONS</div>
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
            </div>
        </div>
    </section><!--/#blog-->
  	<%@include file="/resources/static/footer.jsp" %>
	<%@include file="/resources/static/javascript.jsp" %>
	<script type="text/javascript">
		$("#group_default_setting").find("a").on('click', function (){
			var $this=$(this);
			$("#group_default_setting").find(".active_check").removeClass("active_check");
			$this.addClass("active_check");
		});
		$("#groups_setting_event").on('click', function (){
			
			var tag=$(this).attr("data-action-tag");
			if(tag=="close"){
				$("#group_default_setting").slideDown(300);
				$(this).attr("data-action-tag","open");
			}else{
				$("#group_default_setting").slideUp(300);
				$(this).attr("data-action-tag","close");
			}
			
		});
		$("#setting-close").on('click', function (){
			$("#group_default_setting").slideUp(300);
			$("#groups_setting_event").attr("data-action-tag","close");
		});
		
		
	</script>
</body>
</html>