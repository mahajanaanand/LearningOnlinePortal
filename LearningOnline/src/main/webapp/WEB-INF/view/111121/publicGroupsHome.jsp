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
		<%@ page isELIgnored ="false" %>
    	<c:set var="menuAction" value="<%=UserPrincipal.getMenuAction()%>"/>
	    <c:choose>
		    <c:when test="${menuAction == '020011'}"><%@include file="../020011/editor_head.jsp"%></c:when>
		    <c:when test="${menuAction == '002011'}"><%@include file="../002011/expert_head.jsp"%></c:when>
		    <c:when test="${menuAction == '000211'}"><%@include file="../000211/stud_head.jsp"%></c:when>
		    <c:otherwise><%@include file="../111111/common_head.jsp"%></c:otherwise>
		</c:choose> 
    <section id="blog" class="container bg-clr-border">
        <div class="mid-center">
            <div class="group_home_top">
                <div class="left_column_dashboard_box margin-right-40" id="dashboard_left">
                    <div class="profile_photo-container">
						<div class="profile_photo"><img src="${cdnStatic}/images/no_img.png"></div>
						<div class="profile_user_name">ANAND MAHAJAN</div>
					</div>
					<div class="dashboard_group_contaner">
                        <div class="parent create-group-white parent_open" id="fnd_groups_panel">FRIENDS GROUPS</div>
                        <div class="child" id="fnd_groups_panel_child">
                            <div class="group_summery">
                                <ul>
									<li class="letter J"><a href="Public_Groups_Home.html">Java Jani</a><a href="#" class="remove-comment top-posi right" data-comment-remove-id="125478" title="REMOVE COMMENT"></a></li>
									<li class="letter P"><a href="Public_Groups_Home.html">Perl Photo</a><a href="#" class="remove-comment top-posi right" data-comment-remove-id="125478" title="REMOVE COMMENT"></a></li>
									<li class="letter A"><a href="Public_Groups_Home.html">Angular Angle</a><a href="#" class="remove-comment top-posi right" data-comment-remove-id="125478" title="REMOVE COMMENT"></a></li>
                                    <li class="letter T no-border-bottom"><a href="Public_Groups_Home.html">The Java Expert</a><a href="#" class="remove-comment top-posi right" data-comment-remove-id="125478" title="REMOVE COMMENT"></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
					
					<div class="dashboard_group_contaner">
                        <div class="parent create-group-white parent_open" id="groups_panel">OPEN GROUPS</div>
                        <div class="child" id="groups_panel_child">
                            <div class="group_summery">
                                <ul>
									<li class="letter S"><a href="Public_Groups_Home.html">Spring Samrat</a><a href="#" class="remove-comment  top-posi right" data-comment-remove-id="125478" title="REMOVE COMMENT"></a></li>
									<li class="letter H"><a href="Public_Groups_Home.html">Hibernate Hyper</a><a href="#" class="remove-comment top-posi right" data-comment-remove-id="125478" title="REMOVE COMMENT"></a></li>
									<li class="letter J"><a href="Public_Groups_Home.html">JPA Joo</a><a href="#" class="remove-comment top-posi right" data-comment-remove-id="125478" title="REMOVE COMMENT"></a></li>
									<li class="letter J"><a href="Public_Groups_Home.html">Java Jani</a><a href="#" class="remove-comment top-posi right" data-comment-remove-id="125478" title="REMOVE COMMENT"></a></li>
									<li class="letter P"><a href="Public_Groups_Home.html">Perl Photo</a><a href="#" class="remove-comment top-posi right" data-comment-remove-id="125478" title="REMOVE COMMENT"></a></li>
									<li class="letter A"><a href="Public_Groups_Home.html">Angular Angle</a><a href="#" class="remove-comment top-posi right" data-comment-remove-id="125478" title="REMOVE COMMENT"></a></li>
                                    <li class="letter T no-border-bottom"><a href="Public_Groups_Home.html">The Java Expert</a><a href="#" class="remove-comment top-posi right" data-comment-remove-id="125478" title="REMOVE COMMENT"></a></li>
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
								<a class="custom_button_blank share left">SHARE</a>
							   <a class="publish_option right" id="default_gup_icon"></a>
							</div>
						</div>
					</div>
					<div class="wall-post-container">
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
													<div class="comment-rply-activity boder-left">
														<div class="os-grid-comment os-grid-img-10per">
															<img src="${cdnStatic}/images/man.png" width="35" height="34" class="img-35x34">
														</div>
														<div class="os-grid-content os-grid-comment">
															<div class="activity-content width100 padding-right0">
																<p id="cmd-101-1">I'd use display:inline-block for that. Works much better (dynamic vertical and horizontal dimersions for both container and content).<a class="add-gup-comment" data-comment-id="101-1" title="ADD COMMENT" data-comment-type=1></a><a href="#" class="remove-comment" data-comment-remove-id="101-1" title="REMOVE COMMENT"></a></p>
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
				<div class="left_column_dashboard_box left" id="dashboard_right">
					<div class="dashboard_group_contaner">
                        <div class="parent noti-icon-white parent_open"id="noti_panel">NOTOFICATIONS</div>
                        <div class="child" id="noti_panel_child">
                            <div class="group_summery">
                                <ul>
                                    <li>Seeks to provide that provisions of notification No. 30/2012 - Service Tax dated the 20th June</li>
									<li>Seeks to provide that provisions of notification No. 30/2012 - Service Tax dated the 20th June</li>
									<li>Seeks to provide that provisions of notification No. 30/2012 - Service Tax dated the 20th June</li>
									<li class="no-border-bottom">Seeks to provide that provisions of notification No. 30/2012 - Service Tax dated the 20th June</li>
                                </ul>
                            </div>
                        </div>
                    </div>
					
					<div class="dashboard_group_contaner">
                        <div class="parent rev-req-icon-white parent_open" id="rev_req_panel">REVISION REQUEST</div>
                        <div class="child" id="rev_req_panel_child">
                            <div class="group_summery">
                                <ul>
                                    <li>I'd use display:inline-block for that. Works much better (dynamic vertical and horizontal dimersions for both container and content).<a href="#" class="remove-comment" data-comment-remove-id="125478" title="REMOVE COMMENT"></a></li>
									<li>I'd use display:inline-block for that. Works much better (dynamic vertical and horizontal dimersions for both container and content).<a href="#" class="remove-comment" data-comment-remove-id="125478" title="REMOVE COMMENT"></a></li>
									<li>I'd use display:inline-block for that. Works much better (dynamic vertical and horizontal dimersions for both container and content).<a href="#" class="remove-comment" data-comment-remove-id="125478" title="REMOVE COMMENT"></a></li>
									<li class="no-border-bottom">I'd use display:inline-block for that. Works much better (dynamic vertical and horizontal dimersions for both container and content).<a href="#" class="remove-comment" data-comment-remove-id="125478" title="REMOVE COMMENT"></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                 
                </div>
            </div>
        </div>
    </section><!--/#blog-->
	<div class="group_default_menu" id="group_default_menu">
		<span class="group_up_share_option"></span>
		<ul>
			<li class="default_icon">Default Group</li>
			<li class="group_request">Own Groups</li>
			<li class="group_member">Friends Group</li>
			<li class="group_member">Open Groups</li>
			<li class="setting_icon_balck">Custom</li>
		</ul>
	</div>
	  <%@include file="/resources/static/footer.jsp" %>
	<%@include file="/resources/static/javascript.jsp" %>
</body>
</html>