<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/resources/static/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<link href="http://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Objective Study Login ! Register</title>
    <%@include file="common_head.jsp"%>
		<section class="container">
			<div class="custom-heading left"><span>PRE-ACCESS SECURE LOGIN !</span></div>
			<div class="top_first clear-both	">
				<div class="left_login_container" id="customerLogin">
					<form:form id="preAccessLogin" action="preAccessLogin.do" method="POST" modelAttribute="memberLogin">
						<div class="top_heading">ACCOUNT <span>LOGIN</span></div>
						<div class="top_heading_sub">Existing Member: Login Below</div>
						<div class="input_control">
							<div class="title_inputbox">USER NAME<sup><span class="required">*</span></sup></div>
							<div class="oe-input-box-container">
								<form:input path="username" id="userName" class="oe-input-box" placeholder="Email Adderess"></form:input>
							</div>
						</div>
						<div class="input_control">
							<div class="title_inputbox">SECURE PASSWORD<sup><span class="required">*</span></sup></div>
							<div class="oe-input-box-container">
							<form:input path="password" id="userPass" class="oe-input-box" placeholder="Secure Password"></form:input>
						</div>
						</div>
						<div class="title_inputbox">
							<div class="input_text_box_panel" style="padding-top:28px;">
								<a class="custom_button_blank login left margin-right font-normal" id="btn_secure_login">LOGIN CHECK</a>
								<a class="font-normal" href="loginHelp" id="login_need_help">Need Help</a>
							</div>
						</div>
					</form:form>
				</div>
				<div class="right_register_container" id="customerRegistration">
					<div class="top_heading">New to <span>ObjectiveStudy</span></div>
					<div class="top_heading_sub">Create an account! It's free.</div>
					<div class="message_wall" id="message_wall_register"></div>	
					<table>
						<tr>
							<td>
								<div class="input_control">
									<div class="title_inputbox">YOUR GOOD NAME<sup><span class="required">*</span></sup></div>
									<div class="oe-input-box-container"><input id="memberName" class="oe-input-box" placeholder="Your Good Name"></input></div>
								</div>		
							</td>
							<td>
								<div class="input_control">
									<div class="title_inputbox">EMAIL ADDRESS<sup><span class="required">*</span></sup></div>
									<div class="oe-input-box-container"><input id="memberEmail"  class="oe-input-box" placeholder="Email Adderess"></input></div>
								</div>	
							</td>
						</tr>
						<tr>
							<td>
								<div class="input_control">
									<div class="title_inputbox">DATE OF BIRTH (DD/MM/YYYY)<sup><span class="required">*</span></sup></div>
									<div class="oe-input-box-container"><input id="memberDOB" class="oe-input-box" placeholder="Date Of Birth"></input></div>
								</div>		
							</td>
							<td>
								<div class="input_control">
									<div class="title_inputbox">CONTACT NO.<sup><span class="required">*</span></sup></div>
									<div class="oe-input-box-container"><input  id="memberContactNo" class="oe-input-box" placeholder="Most Recent Contact No."></input></div>
		
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="title_inputbox">ROLE<sup><span class="required">*</span></sup></div>
								<div class="oes-selectBox"  id="seller-selectBox-ROLE" data-tracker-selectBob="ROLE" style="margin-top: 9px;">
									<div class="oes-selectBox-parent">
										<div class="oes-selectBox-parent-heading" id="seller-selectBox-ROLE-heading">SELECT ROLE</div>
										<span class="oes-selectBox-close-img" id="seller-selectBox-ROLE-img">&nbsp;</span>
									</div>	
									<div class="oes-selectBox-child" id="seller-selectBox-ROLE-child">
										<ul id="ROLE" data-multiple-select="false" data-select-type="ROLE">
											<li id="ROLE-0" class="oes-none-selection">No Selection</li>
											<li id="ROLE-1" class="oes-seller-child">Student</li>
											<li id="ROLE-2" class="oes-seller-child">Teacher</li>
											<li id="ROLE-3" class="oes-seller-child">Expert</li>
											<li id="ROLE-4" class="oes-seller-child">Editor</li>
										</ul>
									</div>
								</div>
								<span class="eg_line"></span>
							</td>	
							<td>
								<div class="title_inputbox">CATEGORY<sup><span class="required">*</span></sup></div>
								<div class="btn-select-category" id="btn-select-category"></div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="title_inputbox">GENDER<sup><span class="required">*</span></sup></div>
								<div class="oes-selectBox"  id="seller-selectBox-GD" data-tracker-selectBob="GD" style="margin-top: 9px;">
									<div class="oes-selectBox-parent">
										<div class="oes-selectBox-parent-heading" id="seller-selectBox-GD-heading">SELECT GENDER</div>
										<span class="oes-selectBox-close-img" id="seller-selectBox-GD-img">&nbsp;</span>
									</div>	
									<div class="oes-selectBox-child" id="seller-selectBox-GD-child">
										<ul id="GD" data-multiple-select="false" data-select-type="GENDER">
											<li id="GD-0" class="oes-none-selection">No Selection</li>
											<li id="GD-1" class="oes-seller-child">Male</li>
											<li id="GD-2" class="oes-seller-child">Female</li>
											<li id="GD-3" class="oes-seller-child">Other</li>
		
										</ul>
									</div>
								</div>
								<span class="eg_line"></span>
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<div class="top_heading_sub">I would like to receive my temporary password on</div>
								<div class="scr-feedback" id="receiver_con">
									<ul>
										<li class="feedback">Mobile</li>
										<li class="feedback">Email</li>
									 </ul>
								</div> 
							</td>
						</tr>
						<tr>
							<td colspan="2">
							<div class="tNc input_control">By signing in, you agree to our <a href="#">Terms & Conditions</a> and that you have read our <a href="#">Privacy Policy</a></div></td>
						</tr>
						<tr>
							<td colspan="2">
								<div class="input_text_box_panel" style="padding-top:28px;">
									<a class="custom_button_blank create-account left">CREATE MY ACCOUNT</a>
								</div>
							</td>
						</tr>
					</table>
				</div>
			</div>	
			      
		</section>
	<%@include file="/resources/static/categoryClaasification.jsp" %>	
	<%@include file="/resources/static/footer.jsp" %>
	<%@include file="/resources/static/javascript.jsp" %>
	
    <script type="text/javascript">
    $(document).ready(function () {
       //	CHECK BOX START
		$("#receiver_con").find("li.feedback").on("click", function (){
			var $this=$(this);
			$("#receiver_con").find("li.active").addClass("feedback").removeClass("active");
			$this.addClass("active").removeClass("feedback");
		 });
    //	CHECK BOX END
    	
		$("#home_reg_dob").datepicker({ dateFormat: 'dd/mm/yy'});
		$("#preAccessLogin").find("#btn_secure_login").on('click',function(){
			$("#preAccessLogin").submit();
		});
    });
    </script>
</body>
</html>
