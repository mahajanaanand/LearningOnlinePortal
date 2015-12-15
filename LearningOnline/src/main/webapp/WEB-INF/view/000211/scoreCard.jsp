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
    	<%@include file="stud_head.jsp"%>
		<section class="container">
	       <div class="qfeed-list-container">
	       		<div class="custom-heading"><span>SCORE CARD AND TEST ANALYSIS</span></div>
	      			<div class="score-card-container">
	                    <div>
	                        <table cellpadding="10px;">
	                            <tr>
	                                <th>Test Title</th>
	                                <td>Java Hibernate, Spring</td>
	                                <th>Created Date :</th>
	                                <td>13 Nov, 2015 12:06 PM</td>
	                                <th>Created By :</th>
	                                <td>Aadesh Mahajan</td>
	                            </tr>
	                            <tr>
	                            	<th>Subject</th>
	                                <td>Java Spring</td>
	                            	<th>Test Level</th>
	                                <td>Advance</td>
	                                <th>Test Type</th>
	                                <td>Topic Wise</td>
	                            </tr>
	
	                        </table>
	                    </div>
	             		
	                     <div  class="scr-question-analysis">
	                        <div class="heading-center">YOU'RE TEST ANALYSIS</div>
	                        <table cellpadding="20px;">
	                            <tr>
	                                <th>Attempted Question</th>
	                                <td>45</td>
	                                <th>Correct Questions</th>
	                                <td>35</td>
	                            </tr>
	                            <tr>
	                                <th>Unattempted Question</th>
	                                <td>05</td>
	                                <th>Wrong Questions</th>
	                                <td>02</td>
	                            </tr>
	                        </table>
	                         <div class="heading-center">
	                             <div>YOUR SCORE : 450</div>
	                             <div>YOUR RANK : 450</div>
	                     	 </div>
	                     </div>    
	             	</div>
	      		</div>
	        </div>
	    <div class="custom-heading"><a href="STU_Wrong_Ans.html">Click here to view wrong ansewer and explanation</a></div>
	    <div class="custom-heading"><span>FEEDBACK</span></div>
	    <div class="scr-feedback" id="scr_feedback">
	    	 <ul>
	            <li class="feedback">Excellent</li>
	            <li class="feedback">Average</li>
	            <li class="feedback">Poor</li>
	         </ul>
	         <div class="input_text_box_panel" style="margin-top:30px;"><a class="custom_button_blank save">SUBMIT FEEDBACK</a></div>
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