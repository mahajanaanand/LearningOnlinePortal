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
        <div id="faq_qa_container">
        <div class="os_faq-qa_container" >
            <div class="faq-que-close faq-que" id="faq_1">How do i submit application?</div>
            <div class="faq-ans-close" id="faq_1_ans">Genral information on how to apply can befound here. to submit an application, you can acces the school's online applicatio nsystem.after creating a user acount,ou may continually login to work on your application prior to offcially submitting it for admission considration Genral information on how to apply can befound here. to submit an application, you can acces the school's online applicatio nsystem.after creating a user acount,ou may continually login to work on your application prior to offcially submitting it for admission considration</div>                
        </div>
            
         <div class="os_faq-qa_container" >
            <div class="faq-que-close faq-que" id="faq_2">How do i submit application?</div>
            <div class="faq-ans-close" id="faq_2_ans">Genral information on how to apply can befound here. to submit an application, you can acces the school's online applicatio nsystem.after creating a user acount,ou may continually login to work on your application prior to offcially submitting it for admission considration</div>                
        </div>
        <!--<div class="os_faq-qa_container">
            <div class="faq-que" id="faq_que">how do i submit application?</div>
            <div class="faq-ans" id="faq_ans">genral information on how to apply can befound here. to submit an application, you can acces the school's online applicatio nsystem.after creating a user acount,ou may continually login to work on your application prior to offcially submitting it for admission considration</div>                
        </div>      -->    
            </div>
    </section>
	<%@include file="/resources/static/footer.jsp" %>
	<%@include file="/resources/static/javascript.jsp" %>
    <script type="text/javascript">
$(document).ready(function () {

   $("#faq_qa_container").find("div.faq-que").on("click",function(){
            var this_id=$(this).attr("id");
	   		$(".faq-que-open").addClass("faq-que-close").removeClass("faq-que-open"); 
	   		$(".faq-ans-close").slideUp(300);
	   		$("#"+this_id).addClass("faq-que-open").removeClass("faq-que-close"); 
            $("#"+this_id+"_ans").slideDown(300);     
            

        });
});
       
        
    </script>
</body>
</html>