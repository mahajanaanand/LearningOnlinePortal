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
    <title>Objective Study Login ! Register</title>
    <%@include file="common_head.jsp"%>
		<section class="container">
			<div class="custom-heading left"><span>AUTHENTICATION MANAGER !</span></div>
			<div class="clear-both center-div center-div-padding0">
				<p>In order to receive secure password by email, Please enter the email address you provided during the registration process. </p>
				<div class="table-div">
					<table>
						<tr>
							<td>
								<div class="input_control">
									<div class="title_inputbox">EMAIL ADDRESS<sup><span class="required">*</span></sup></div>
									<div class="oe-input-box-container"><input type="text" id="userName" class="oe-input-box" placeholder="Email Adderess"/></div>
								</div>		
							</td>
							<td>
								<div class="input_text_box_panel" style="padding-top:35px;">
									<a class="custom_button_blank email left">SEND EMAIL</a>
								</div>
							</td>
						</tr>
					</table>
				</div>
			</div>	    
		</section>
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
    });
    </script>
</body>
</html>