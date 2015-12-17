<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="/resources/static/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<link href="http://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet">
<style>
</style>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Learning Online Web Portal</title>
      <%@include file="common_head.jsp"%>
    <section id="main-slider" class="no-margin">
        <div class="carousel slide">
           <div class="container">
                <div class="col-md-6 leftbar"><h2>Start learning from</br> real peoples</h2>
                    <div class="tbut1" style="width:250px; float:left; margin-top:60px;">
	            <a href="preAccessLogin.html">JOIN FOR FREE</a>
	            <span class="tag-line">Easy & Free</span>    
	        </div>
                </div>
            <div class="col-md-4 col-md-offset-8 hregform">
            <div class="register-now-heading">not a member yet register now</div>	
            <div class="">
                    <fieldset>
                    	<form:form id="registerForm" action="registerStepOne" commandName="memberInfo">
                        <div class="form-group">
                            <span class="lab reg-name"></span>
							<form:input path="memberName" class="form-control input-lg" placeholder="Name" name="Name" id="home_reg_name"/>
							<form:errors path="memberName" cssClass="errors" element="div"/>
                        </div>
						<div class="form-group">
                            <span class="lab reg-mobile"></span>
							<form:input path="memberMobile" class="form-control input-lg" placeholder="Mobile" name="Mobile" id="home_reg_mobile"/>
						    <form:errors path="memberMobile" cssClass="error"/>
						</div>
						<div class="form-group">
                            <span class="lab reg-email"></span>
							<form:input path="memberEmail" class="form-control input-lg" placeholder="Email" name="Email" id="home_reg_email"/>
						    <form:errors path="memberEmail" cssClass="error"/>
						</div>
						<div class="form-group">
                            <span class="lab reg-dob"></span>
						    <form:input path="dateOfBirth" class="form-control input-lg" placeholder="Date of Birth" name="Dob" id="home_reg_dob"/>
<%--                        		<form:errors path="dateOfBirth" cssClass="error"/> --%>
                       	</div>
                       <div class="form-group">
						   <span class="lab reg-sex"></span>
                            <div class="select-control" id="home-reg-gender">Gender</div>
						   	<div  class="select-list clear-both" id="select-list-home-reg-gender">
						   		<ul id="gender">
									<li id="1">Male</li>
									<li id="2">Female</li>
								</ul>
						   	</div>
                        </div>
                         <form:hidden path="memberGender" id="gender_option"/>
						<%-- <form:errors path="memberGender" cssClass="error"/> --%>
						<div class="form-group btn-reg-con" id="btn_home_register">REGISTER NOW</div>
					</form:form>
                    </fieldset>
                </div>
            </div>
        </div>
    </div>
        </div>       
    </section>

    <section id="conatcat-info">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 sharediv">
                    <div class="media contact-info wow slideInUp" data-wow-duration="1000ms" data-wow-delay="600ms">
                       <div class="row1-1">
                            <div class="col-1-3">
                                <div class="col-1-3-icon-1">&nbsp;</div>
                                <div class="col-1-3-heading">Get help from someone</div>
                                <div class="col-1-3-text">Setup a private study group with some close friends.</div>
                            </div>
                             <div class="col-1-3">
                                <div class="col-1-3-icon-2">&nbsp;</div>
                                <div class="col-1-3-heading">Get expert Suggestion</div>
                                <div class="col-1-3-text">Share your knowledge with group members.</div>
                            </div>
                             <div class="col-1-3">
                                <div class="col-1-3-icon-3">&nbsp;</div>
                                <div class="col-1-3-heading">Generate test from group</div>
                                <div class="col-1-3-text">Ask question and get an answer from experts.</div>
                            </div>
                        </div>
                        <div class="row1-1">
                            <div class="col-1-3 no-border-bottom">
                                <div class="col-1-3-icon-4">&nbsp;</div>
                                <div class="col-1-3-heading">Study together</div>
                                <div class="col-1-3-text">Setup a private study group with some close friends.</div>
                            </div>
                             <div class="col-1-3 no-border-bottom">
                                <div class="col-1-3-icon-5">&nbsp;</div>
                                <div class="col-1-3-heading">Review your performance</div>
                                <div class="col-1-3-text">Share your knowledge with group members.</div>
                            </div>
                             <div class="col-1-3 no-border-bottom">
                                <div class="col-1-3-icon-6">&nbsp;</div>
                                <div class="col-1-3-heading">Become Scorer</div>
                                <div class="col-1-3-text">Ask question and get an answer from experts.</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div><!--/.container-->    
    </section><!--/#conatcat-info-->
   
    <section id="partner">
       
             <div class="media seclast2 wow fadeInDown color_div" data-wow-duration="1000ms" data-wow-delay="600ms">
                <h2>Write MCQ, generate open test for learners</h2>
                <div class="lefdiv2"><a class="btn btn-color enquiry" href="preAccessLogin.html">EXPERT ENQUIRY</a>
                <h4 style="color:#fff;">Share Your Experience</h4>
                </div>
            </div>    

            <div class="partners">
                
            </div>        
        
    </section><!--/#partner-->
        <section id="conatcat-info">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 sharediv">
                    <div class="media contact-info wow slideInUp" data-wow-duration="1000ms" data-wow-delay="600ms">
                       <div class="row1-1">
                            <div class="col-1-3">
                                <div class="col-1-3-icon-1">&nbsp;</div>
                                <div class="col-1-3-heading">Create expert group</div>
                                <div class="col-1-3-text">Setup a private study group with some close friends.</div>
                            </div>
                             <div class="col-1-3">
                                <div class="col-1-3-icon-2">&nbsp;</div>
                                <div class="col-1-3-heading">Upload MCQ</div>
                                <div class="col-1-3-text">Share your knowledge with group members.</div>
                            </div>
                             <div class="col-1-3">
                                <div class="col-1-3-icon-3">&nbsp;</div>
                                <div class="col-1-3-heading">Generate new test for group</div>
                                <div class="col-1-3-text">Ask question and get an answer from experts.</div>
                            </div>
                        </div>
                        <div class="row1-1">
                            <div class="col-1-3 no-border-bottom">
                                <div class="col-1-3-icon-4">&nbsp;</div>
                                <div class="col-1-3-heading">Make them available to your group</div>
                                <div class="col-1-3-text">Setup a private study group with some close friends.</div>
                            </div>
                             <div class="col-1-3 no-border-bottom">
                                <div class="col-1-3-icon-5">&nbsp;</div>
                                <div class="col-1-3-heading">View group activity</div>
                                <div class="col-1-3-text">Share your knowledge with group members.</div>
                            </div>
                             <div class="col-1-3 no-border-bottom">
                                <div class="col-1-3-icon-6">&nbsp;</div>
                                <div class="col-1-3-heading">Enhance your network</div>
                                <div class="col-1-3-text">Ask question and get an answer from experts.</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div><!--/.container-->    
    </section><!--/#conatcat-info-->


    <section id="seclast">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="media seclast2 wow fadeInDown color_div" data-wow-duration="1000ms" data-wow-delay="600ms">
                       <h2>Powerful tool for finding great answer</h2>
                       <h4>Don't just answer "Yes" or "No", Share your answer the way your favourite teacher would</h4>
                       <div class="tbut1">
                            <a href="redirectQATerminal">QA TERMINAL</a>
                            <span>Ask a question, Find great answer</span>    
                        </div>
                    </div>
                </div>
            </div>
        </div><!--/.container-->    
    </section><!--/#conatcat-info-->
	<%@include file="/resources/static/footer.jsp" %>
	<%@include file="/resources/static/javascript.jsp" %>
	<script type="text/javascript">
		 $( document ).ready(function() {
			 $(".select-control").on('click', function (){
				 var id=$(this).attr("id");
				 $("#select-list-"+id).slideToggle( 300);
			 });
			 $(".select-list").mouseleave(function (){
				 $(".select-list").slideUp(300);
			 });
			 $(".select-list li").on('click',function (){
				 var $this=$(this);
				 var ul_id=$this.closest("ul").attr("id");
				 $("#"+ul_id).find(".active-li").removeClass("active-li");
				 $this.addClass("active-li");
				$("#gender_option").val($this.attr("id"));
			 });
			 $("#home_reg_dob").datepicker({ dateFormat: 'dd/mm/yy'});
			 $("#registerForm").find("#btn_home_register").on('click',function(){
				 $("#registerForm").submit();
			 });
		 });
	</script>
</body>
</html>
