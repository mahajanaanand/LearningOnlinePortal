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
	<%@include file="editor_head.jsp"%>	    
    <section id="main-center-container">
        <div class="container">
            <div class="container contact-wrap clearfix"> 
                   <div class="custom-heading"><span>QUESTION FEEDING</span></div>
                <div class="categary-container">
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
					<div class="que-feed-container">
						<div class="que-feed-col-width60per">
							<div class="qustxt-img-container no-border-top">
								<div class="input_text_box_panel inline-block left width60per">
									<div class="title_inputbox" >QUESTION<sup><span class="required">*</span></sup></div>
									<div class="oe-textarea-container-GC-long">
									   <textarea class="oe-textarea-GC-long" placeholder="Write Question" id="mcq_question"></textarea>
								   </div>
									
								</div>
								<div class="dob_right editor-choose-button">
									<div class="button_container upload_button">
										<a class="custom_button_blank upload-photo position-top left">UPLOAD</a>
										<input type="file" class="upload position-top">
									</div>

								</div>
						 	</div><!--ques -tag -->
							
							<div class="qustxt-img-container">
								<div class="input_text_box_panel inline-block left width60per">
									<div class="title_inputbox right_answer">OPTION (1)<sup><span class="required">*</span></sup></div>
									<div class="oe-textarea-container-GC-long">
									   <textarea class="oe-textarea-GC-long" placeholder="Option (1)" id="mcq_option1"></textarea>
								   </div>
									
								</div>
								<div class="dob_right editor-choose-button">
									<div class="button_container upload_button">
										<a class="custom_button_blank upload-photo position-top left">UPLOAD</a>
										<input type="file" class="upload position-top">
									</div>

								</div>
						 	</div><!--ques -tag -->
							<div class="qustxt-img-container">
								<div class="input_text_box_panel inline-block left width60per">
									<div class="title_inputbox right_answer">OPTION (2)<sup><span class="required">*</span></sup></div>
									<div class="oe-textarea-container-GC-long">
									   <textarea class="oe-textarea-GC-long" placeholder="Option (2)" id="mcq_option2"></textarea>
								   </div>
									
								</div>
								<div class="dob_right editor-choose-button">
									<div class="button_container upload_button">
										<a class="custom_button_blank upload-photo position-top left">UPLOAD</a>
										<input type="file" class="upload position-top">
									</div>

								</div>
						 	</div><!--ques -tag -->
							<div class="qustxt-img-container">
								<div class="input_text_box_panel inline-block left width60per">
									<div class="title_inputbox right_answer">OPTION (3)<sup><span class="required">*</span></sup></div>
									<div class="oe-textarea-container-GC-long">
									   <textarea class="oe-textarea-GC-long" placeholder="Option (3)" id="mcq_option3"></textarea>
								   </div>
									
								</div>
								<div class="dob_right editor-choose-button">
									<div class="button_container upload_button">
										<a class="custom_button_blank upload-photo position-top left">UPLOAD</a>
										<input type="file" class="upload position-top">
									</div>

								</div>
						 	</div><!--ques -tag -->
							<div class="qustxt-img-container">
								<div class="input_text_box_panel inline-block left width60per">
									<div class="title_inputbox right_answer">OPTION (4)<sup><span class="required">*</span></sup></div>
									<div class="oe-textarea-container-GC-long">
									   <textarea class="oe-textarea-GC-long" placeholder="Option (4)" id="mcq_option4"></textarea>
								   </div>
									
								</div>
								<div class="dob_right editor-choose-button">
									<div class="button_container upload_button">
										<a class="custom_button_blank upload-photo position-top left">UPLOAD</a>
										<input type="file" class="upload position-top">
									</div>

								</div>
						 	</div><!--ques -tag -->
							<div class="qustxt-img-container no-bottom-margin no-border-bottom">
								<div class="input_text_box_panel inline-block left width60per">
									<div class="title_inputbox" >EXPLANATION<sup><span class="required">*</span></sup></div>
									<div class="oe-textarea-container-GC-long">
									   <textarea class="oe-textarea-GC-long" placeholder="Answer Explanation" id="mcq_explanation"></textarea>
								   </div>
									
								</div>
								<div class="dob_right editor-choose-button">
									<div class="button_container upload_button">
										<a class="custom_button_blank upload-photo position-top left">UPLOAD</a>
										<input type="file" class="upload position-top">
									</div>

								</div>
						 	</div><!--ques -tag -->
							<div class="qustxt-img-container no-bottom-margin no-border-bottom">
								<div class="input_text_box_panel inline-block left width60per">
									<div class="title_inputbox" >KEYWORD<sup><span class="required">*</span></sup></div>
									<div class="oe-textarea-container-GC-long">
									   <textarea class="oe-textarea-GC-long" placeholder="Keyword" id="mcq_keyword"></textarea>
								   </div>
									
								</div>
						 	</div><!--ques -tag -->
						</div>
						<div class="que-feed-col-width40per">
						
						</div>
					</div>
              
					<div style="padding-top:10px;">
						<a class="custom_button_blank cancel right ">CANCLE</a>
						<a class="custom_button_blank reset right margin-right">RESET</a>
						<a class="custom_button_blank save right margin-right">SUBMIT QUESTION</a>
					</div>
				</div><!--/.row-->
            </div>
        </div><!--/.container-->    
    </section><!--/#conatcat-info-->

    <div class="magin-to-bottom"></div>
	        <%@include file="/resources/static/footer.jsp" %>
	<%@include file="/resources/static/javascript.jsp" %>
</body>
</html>

