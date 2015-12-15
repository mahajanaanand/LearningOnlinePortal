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
    <%@include file="common_head.jsp"%>  
	<section class="container">
	    <div class="faq-heading custom-heading"><img src="${cdnStatic}/images/OS_Help.jpg"><span>Objective Study Frequently Asked Questions</span></div>
	    <div class="container contact-wrap clearfix">
	        <div class="faq_main_container">
	            <div class="faq_row-1">
	                <div class="faq_col-1-1">
	                    <div class="heading">GENERAL SECTION</div>
	                    <div class="details">
	                        <ul>
	                            <li>FAQ-1</li>
	                            <li>FAQ-2</li>
	                            <li>FAQ-3</li>
	                        </ul>
	                    <div class="faq-view_all"><a href="#">View All</a></div>
	                    </div>
	                </div>
	                <div class="faq_col-1-2">
	                    <div class="heading">STUDENT SECTION</div>
	                    <div class="details">
	                        <ul>
	                            <li>FAQ-1</li>
	                            <li>FAQ-2</li>
	                            <li>FAQ-3</li>
	                        </ul>
	                    <div class="faq-view_all"><a href="#">View All</a></div>
	                    </div>
	                </div>
	            
	                <div class="faq_col-1-3">
	                    <div class="heading">EXPERT SECTION</div>
	                    <div class="details">
	                        <ul>
	                            <li>FAQ-1</li>
	                            <li>FAQ-2</li>
	                            <li>FAQ-3</li>
	                        </ul>
	                    <div class="faq-view_all"><a href="#">View All</a></div>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	    <div class="container contact-wrap clearfix">
	        <div class="faq_main_container">
	            <div class="faq_row-1">
	                <div class="faq_col-2-1">
	                    <div class="heading">GROUP FORMATION</div>
	                    <div class="details">
	                        <ul>
	                            <li>FAQ-1</li>
	                            <li>FAQ-2</li>
	                            <li>FAQ-3</li>
	                        </ul>
	                    <div class="faq-view_all"><a href="#">View All</a></div>
	                    </div>
	                </div>
	                <div class="faq_col-2-2">
	                    <div class="heading">QA-TERMINAL</div>
	                    <div class="details">
	                        <ul>
	                            <li>FAQ-1</li>
	                            <li>FAQ-2</li>
	                            <li>FAQ-3</li>
	                        </ul>
	                    <div class="faq-view_all"><a href="#">View All</a></div>
	                    </div>
	                </div>
	            
	                
	            </div>
	        </div>
	    </div>
	</section>
	<%@include file="/resources/static/footer.jsp" %>
	<%@include file="/resources/static/javascript.jsp" %>
    <script type="text/javascript">
$(document).ready(function () {

     // Attach Button click event listener 
    $("#myBtn").click(function(){

         // show Modal
         $('#myModal').modal('show');
    });
});
    </script>
</body>
</html>