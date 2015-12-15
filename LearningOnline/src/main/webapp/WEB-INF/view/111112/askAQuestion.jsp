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
    <title>QA Terminal</title>
 		<%@include file="qa_head.jsp"%>
		<section class="container">
		    <div class="qa-give-ans-container">
		         <div class="container contact-wrap clearfix"> 
		                <div class="categary-grid">
		                <div class="mcq-select-box">                    
		                    <div class="select-container">
		                        <div class="title_inputbox">COURSE<sup><span class="required">*</span></sup></div>
		                           <div class="oes-selectBox"  id="seller-selectBox-COURSE" data-tracker-selectBob="COURSE" style="margin-top: 9px;">
		                                <div class="oes-selectBox-parent">
		                                    <div class="oes-selectBox-parent-heading" id="seller-selectBox-COURSE-heading">SELECT COURSE</div>
		                                    <span class="oes-selectBox-close-img" id="seller-selectBox-COURSE-img">&nbsp;</span>
		                                </div>	
		                                <div class="oes-selectBox-child" id="seller-selectBox-COURSE-child">
		                                    <ul id="COURSE" data-multiple-select="false" data-select-type="COURSE">
		                                        <li id="COURSE-0" class="oes-none-selection filterOption">No Selection</li>
		                                    </ul>
		                                </div>
		                            </div>
		                            <span class="eg_line"></span>
		                        
		                    </div>
		                    <div class="select-container">
		                        
		                        <div class="title_inputbox">SUBJECT<sup><span class="required">*</span></sup></div>
		                           <div class="oes-selectBox"  id="seller-selectBox-SUBJECT" data-tracker-selectBob="SUBJECT" style="margin-top: 9px;">
		                                <div class="oes-selectBox-parent">
		                                    <div class="oes-selectBox-parent-heading" id="seller-selectBox-SUBJECT-heading">SELECT SUBJECT</div>
		                                    <span class="oes-selectBox-close-img" id="seller-selectBox-SUBJECT-img">&nbsp;</span>
		                                </div>	
		                                <div class="oes-selectBox-child" id="seller-selectBox-SUBJECT-child">
		                                    <ul id="SUBJECT" data-multiple-select="false" data-select-type="SUBJECT">
		                                        <li id="SUBJECT-0" class="oes-none-selection filterOption">No Selection</li>
		                                    </ul>
		                                </div>
		                            </div>
		                            <span class="eg_line"></span>
		                        
		                    </div>
		                    
		                    
		                      <div class="select-container">
		                        
		                        <div class="title_inputbox">CHEAPTER<sup><span class="required">*</span></sup></div>
		                           <div class="oes-selectBox"  id="seller-selectBox-CHEAPTER" data-tracker-selectBob="CHEAPTER" style="margin-top: 9px;">
		                                <div class="oes-selectBox-parent">
		                                    <div class="oes-selectBox-parent-heading" id="seller-selectBox-CHEAPTER-heading">SELECT CHEAPTER</div>
		                                    <span class="oes-selectBox-close-img" id="seller-selectBox-CHEAPTER-img">&nbsp;</span>
		                                </div>	
		                                <div class="oes-selectBox-child" id="seller-selectBox-CHEAPTER-child">
		                                    <ul id="CHEAPTER" data-multiple-select="false" data-select-type="CHEAPTER">
		                                        <li id="CHEAPTER-0" class="oes-none-selection filterOption">No Selection</li>
		                                    </ul>
		                                </div>
		                            </div>
		                            <span class="eg_line"></span>
		                        
		                    </div>
		                    
		                    <div class="select-container">
		                        
		                       <div class="title_inputbox">TOPIC<sup><span class="required">*</span></sup></div>
		                           <div class="oes-selectBox"  id="seller-selectBox-TOPIC" data-tracker-selectBob="TOPIC" style="margin-top: 9px;">
		                                <div class="oes-selectBox-parent">
		                                    <div class="oes-selectBox-parent-heading" id="seller-selectBox-TOPIC-heading">SELECT TOPIC</div>
		                                    <span class="oes-selectBox-close-img" id="seller-selectBox-TOPIC-img">&nbsp;</span>
		                                </div>	
		                                <div class="oes-selectBox-child" id="seller-selectBox-TOPIC-child">
		                                    <ul id="TOPIC" data-multiple-select="false" data-select-type="TOPIC">
		                                        <li id="TOPIC-0" class="oes-none-selection filterOption">No Selection</li>
		                                    </ul>
		                                </div>
		                            </div>
		                            <span class="eg_line"></span>
		                         </div>
		                    </div>
		                    
		                       </div><!--/.categary-container-->
		                    </div><!--/.container contact-wrap clearfix-->
				<div class="qa-give-ans-left">
					
		            <div class="qa-give-ans-ans-text-boxcontainer">
		                 <div class="custom-heading"><span>QUESTION TITLE</span></div>
		                 <div class="qa-give-ans-textarea-container">
		                    <div class="input_text_box_panel">
		                       <div class="oe-textarea-container-W-long">
		                           <textarea class="oe-textarea-W-long" placeholder="Question Title" id="title_question"></textarea>
		                       </div>
		                    </div>
		                </div> 
						<div class="custom-heading"><span>QUESTION DETAIL</span></div>
						<div class="qa-give-ans-textarea-container">
		                    <div class="input_text_box_panel">
		                       <div class="oe-textarea-container-HW-long">
		                           <textarea class="oe-textarea-HW-long" placeholder="Question Detail" id="reg_address"></textarea>
		                       </div>
		                       <div class="input_box_bottom"><span class="eg_line"></span></div>
		                    </div>
		                </div> 
		                
						<div class="custom-heading"><span>KEYWORD</span></div>
						<div class="qa-give-ans-textarea-container">
		                    <div class="input_text_box_panel">
		                       <div class="oe-textarea-container-HW-long">
		                           <textarea class="oe-textarea-HW-long" placeholder="Keyword" id="question_keyword"></textarea>
		                       </div>
		                       <div class="input_box_bottom"><span class="eg_line"></span></div>
		                    </div>
		                </div> 
						
						<div class="input_text_box_panel">
							<a class="custom_button_blank cancel right">CANCLE</a>
							<a class="custom_button_blank post-que right margin-right">POST QUESTION</a>
							<div class="button_container upload_button right">
								<a class="custom_button_blank upload right margin-right">UPLOAD IMAGE</a>
								 <input type="file" class="upload">
							 </div>
							
							
		                </div>
		            </div>
		        </div>  
		    </div>
		    <div class="qa-give-ans-guidline">
		        <div class="qa-give-ans-title no-border border-bottom">QUESTION GUIDLINE</div>
				<div class="red_indication">Please do not provide any sensitive information.</div>
		    </div>
		</section>
		<%@include file="/resources/static/footer.jsp" %>
		<%@include file="/resources/static/javascript.jsp" %>
</body>
</html>