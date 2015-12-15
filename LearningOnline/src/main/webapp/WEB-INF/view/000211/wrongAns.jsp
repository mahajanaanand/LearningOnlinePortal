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
    <%@include file="stud_head.jsp"%>
    <section id="main-center-container">
        <div class="container">
        <fieldset class="container" id="step2">
               <div class="custom-heading"><span>WRONG ANSWER</span></div>
            <div class="container contact-wrap clearfix"> 
              <div class="wrong-ans-container">
                  
              </div><!--wrong-ans-container-->
                
              <div class="wrongans-txtarea-container">
					<h3>Still have a doubt? Add this question on QA Terminal for open discussion</h3>
					<div class="qa-give-ans-textarea-container">
						<div class="input_text_box_panel">
						   <div class="oe-textarea-container-HW-long">
							   <textarea class="oe-textarea-HW-long" placeholder="Brief explanation about your doubts" id="reg_address"></textarea>
						   </div>
						   <div class="input_box_bottom"><span class="eg_line"></span></div>
						</div>
					</div> 
               </div>
				 <div class="input_text_box_panel"> 
                    <div class="button_container upload_button">
                        <a class="custom_button_blank choose-file left margin-right">CHOOSE FILE</a>
                         <input type="file" class="upload">
                     </div>
                     <a class="custom_button_blank add-item left">ADD THIS QUESTION</a>
                </div>
                  
                  
              </div><!--wrongans-txtarea-container-->
          </div><!--/.row-->
        </fieldset>

        </div><!--/.container-->    
    </section><!--/#conatcat-info-->
    <%@include file="/resources/static/footer.jsp" %>
	<%@include file="/resources/static/javascript.jsp" %>
</body>
</html>
