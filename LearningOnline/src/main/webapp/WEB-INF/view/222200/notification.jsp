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
    <title>Student Dashboard</title>
    <%@ page isELIgnored ="false" %>
     <c:set var="menuAction" value="<%=UserPrincipal.getMenuAction()%>"/>
   <c:choose>
	    <c:when test="${menuAction == '020011'}"><%@include file="../020011/editor_head.jsp"%></c:when>
	    <c:when test="${menuAction == '002011'}"><%@include file="../002011/expert_head.jsp"%></c:when>
	    <c:when test="${menuAction == '000211'}"><%@include file="../000211/stud_head.jsp"%></c:when>
	    <c:otherwise></c:otherwise>
	 </c:choose>   	 
	<section class="container">
       <div class="notification-page-container">
       		<div class="custom-heading"><span id="query_string">YOUR NOTIFICATIONS</span></div>
      		<ul>
		   		<li>
					<div class="noti-detail">
						<a href="#" class="remove-noti" data-noti-id="125478" title="REMOVE">Aadesh Mahajan post a new question in Java Spring Aadesh Mahajan post a new question in Java Spring Aadesh Mahajan post a new question in Java Spring Aadesh Mahajan post a new question in Java SpringAadesh Mahajan post a new question in Java SpringAadesh Mahajan post a new question in Java SpringAadesh Mahajan post a new question in Java Spring</a>
					</div>
					<div class="noti-tag">22 June, 2015 12:22:30 AM</div>
					
				</li>
				<li>
					<div class="noti-detail">
						<a href="#" class="remove-noti" data-noti-id="125479" title="REMOVE">Aadesh Mahajan post a new question in Java Spring Aadesh Mahajan post a new question in Java Spring Aadesh Mahajan post a new question in Java Spring Aadesh Mahajan post a new question in Java SpringAadesh Mahajan post a new question in Java SpringAadesh Mahajan post a new question in Java SpringAadesh Mahajan post a new question in Java Spring</a>
					</div>
					<div class="noti-tag">22 June, 2015 12:22:30 AM</div>
					
				</li>
				<li>
					<div class="noti-detail">
						<a href="#" class="remove-noti" data-noti-id="125480" title="REMOVE">Aadesh Mahajan post a new question in Java Spring Aadesh Mahajan post a new question in Java Spring Aadesh Mahajan post a new question in Java Spring Aadesh Mahajan post a new question in Java SpringAadesh Mahajan post a new question in Java SpringAadesh Mahajan post a new question in Java SpringAadesh Mahajan post a new question in Java Spring</a>
					</div>
					<div class="noti-tag">22 June, 2015 12:22:30 AM</div>
					
				</li>
				<li>
					<div class="noti-detail">
						<a href="#" class="remove-noti" data-noti-id="125481" title="REMOVE">Aadesh Mahajan post a new question in Java Spring Aadesh Mahajan post a new question in Java Spring Aadesh Mahajan post a new question in Java Spring Aadesh Mahajan post a new question in Java SpringAadesh Mahajan post a new question in Java SpringAadesh Mahajan post a new question in Java SpringAadesh Mahajan post a new question in Java Spring</a>
					</div>
					<div class="noti-tag">22 June, 2015 12:22:30 AM</div>
					
				</li>
				<li>
					<div class="noti-detail">
						<a href="#" class="remove-noti" data-noti-id="125482" title="REMOVE">Aadesh Mahajan post a new question in Java Spring Aadesh Mahajan post a new question in Java Spring Aadesh Mahajan post a new question in Java Spring Aadesh Mahajan post a new question in Java SpringAadesh Mahajan post a new question in Java SpringAadesh Mahajan post a new question in Java SpringAadesh Mahajan post a new question in Java Spring</a>
					</div>
					<div class="noti-tag">22 June, 2015 12:22:30 AM</div>
					
				</li>
				<li>
					<div class="noti-detail">
						<a href="#" class="remove-noti" data-noti-id="125482" title="REMOVE">Aadesh Mahajan post a new question in Java Spring Aadesh Mahajan post a new question in Java Spring Aadesh Mahajan post a new question in Java Spring Aadesh Mahajan post a new question in Java SpringAadesh Mahajan post a new question in Java SpringAadesh Mahajan post a new question in Java SpringAadesh Mahajan post a new question in Java Spring</a>
					</div>
					<div class="noti-tag">22 June, 2015 12:22:30 AM</div>
					
				</li>
				<li><div class="show-more-con"><a href="#" class="show_more">SHOW MORE</a></div></li>
				
		   	</ul>
      </div>
	</section>
		<%@include file="/resources/static/footer.jsp" %>
		<%@include file="/resources/static/javascript.jsp" %>
    <script type="text/javascript">
    $(document).ready(function () {
        $("#scr_feedback").find("li.feedback").on("click", function (){
            var $this=$(this);
			$("li.active").addClass("feedback").removeClass("active");
            $this.addClass("active").removeClass("feedback");
        });   
    });
    </script>
</body>
</html>