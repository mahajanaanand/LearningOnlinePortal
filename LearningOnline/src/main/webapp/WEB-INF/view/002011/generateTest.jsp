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
	<%@include file="expert_head.jsp"%>
    <section id="main-center-container">
        <div class="container">
              <div class="container contact-wrap clearfix"> 
                   <div class="custom-heading"><span>GENRATE NEW TEST</span></div>
					<div class="find-group-filter-container">
						<table>
							<tr>
								 <td>
									 <div class="title_inputbox">COURSE<sup><span class="required"></span></sup></div>
								   <div class="oes-selectBox"  id="seller-selectBox-SC" data-tracker-selectBob="SC">
									<div class="oes-selectBox-parent">
											<div class="oes-selectBox-parent-heading" id="seller-selectBox-SC-heading">SELECT COURSE</div>
											<span class="oes-selectBox-close-img" id="seller-selectBox-SC-img">&nbsp;</span>
										</div>	
										<div class="oes-selectBox-child" id="seller-selectBox-SC-child">
											<ul id="SC" data-multiple-select="false" data-select-type="COURSE">
												<li id="SC-0" class="oes-none-selection filterOption">No Selection</li>
											</ul>
										</div>
									</div>
								</td>
								<td>
									 <div class="title_inputbox">SUBJECT<sup><span class="required"></span></sup></div>
								   <div class="oes-selectBox"  id="seller-selectBox-S" data-tracker-selectBob="S">
									<div class="oes-selectBox-parent">
											<div class="oes-selectBox-parent-heading" id="seller-selectBox-S-heading">SELECT SUBJECT</div>
											<span class="oes-selectBox-close-img" id="seller-selectBox-S-img">&nbsp;</span>
										</div>	
										<div class="oes-selectBox-child" id="seller-selectBox-S-child">
											<ul id="GC" data-multiple-select="false" data-select-type="SUBJECT">
												<li id="S-0" class="oes-none-selection filterOption">No Selection</li>
											</ul>
										</div>
									</div>
								</td>

								 <td>
									 <div class="title_inputbox">CHAPTER<sup><span class="required"></span></sup></div>
								   <div class="oes-selectBox"  id="seller-selectBox-CH" data-tracker-selectBob="CH">
									<div class="oes-selectBox-parent">
											<div class="oes-selectBox-parent-heading" id="seller-selectBox-CH-heading">SELECT CHAPTER</div>
											<span class="oes-selectBox-close-img" id="seller-selectBox-CH-img">&nbsp;</span>
										</div>	
										<div class="oes-selectBox-child" id="seller-selectBox-CH-child">
											<ul id="CH" data-multiple-select="false" data-select-type="CHAPTER">
												<li id="CH-0" class="oes-none-selection filterOption">No Selection</li>
											</ul>
										</div>
									</div>
								</td>

								<td>
									<div class="title_inputbox">TOPIC<sup><span class="required"></span></sup></div>
								   <div class="oes-selectBox"  id="seller-selectBox-T" data-tracker-selectBob="T">
									<div class="oes-selectBox-parent">
											<div class="oes-selectBox-parent-heading" id="seller-selectBox-T-heading">SELECT TOPIC</div>
											<span class="oes-selectBox-close-img" id="seller-selectBox-T-img">&nbsp;</span>
										</div>	
										<div class="oes-selectBox-child" id="seller-selectBox-T-child">
											<ul id="T" data-multiple-select="false" data-select-type="TOPIC">
												<li id="T-0" class="oes-none-selection filterOption">No Selection</li>
											</ul>
										</div>
									</div>
								</td>
								<td class="no-border-right">
									 <div class="title_inputbox"><sup><span class="required"></span></sup></div>
									 <div class="input_text_box_panel">
										<a class="custom_button_blank find-group left">SEARCH</a>
									</div>
								</td>
							</tr>
						</table>
					 </div>
				</div><!--/.container contact-wrap clearfix-->
			
                    <div class="edt-src-keyword-txt-box-container margin-top10">
                        <div class="edt-src-keyword-txt-box">
							<div class="input_text_box_panel" style="float:left">
								<div class="title_inputbox">KEYWORD<sup><span class="required"></span></sup></div>
									 <div class="oe-input-box-container-long">
										<input class="oe-input-box-long" placeholder="Title" id="rejTitle" data-tooltip=""/>
									 </div>
								<div class="input_box_bottom"><span class="eg_line"></span></div>
							</div>
							 <a class="custom_button_blank find-group positioned left" id="">SEARCH</a>
						</div>
                    </div>
                    <div class="filtered-que-list-container">
                        <div class="heading-title">List Of Filtered Question</div> 
						<div class="que-src-container" id="que-src-container">
							<ul>
								<li>I have been working on android apps for a long time but now I have decided to create a game aside with my pre-calculus final. I have completed the whole code and it works perfectly except one tiny issue. First of the game is based on flying pig(my classmate's face) avoiding top and bottom osticle. I developed an algorithm so that the obsticles are evenly spaced </li>
								<li>I have been working on android apps for a long time but now I have decided to create a game aside with my pre-calculus final. I have completed the whole code and it works perfectly except one tiny issue. First of the game is based on flying pig(my classmate's face) avoiding top and bottom osticle. I developed an algorithm so that the obsticles are evenly spaced  First of the game is based on flying pig(my classmate's face) avoiding top and bottom osticle. I developed an algorithm so that the obsticles are evenly spaced</li>
							</ul>
						</div>
                    
                   </div><!--/.filtered-que-list-container-->
                    <div class="sel-que-list">
                        <div class="heading-title">List Of Selected Question</div> 
						<div class="que-src-container" id="sel-que-container"><ul></ul></div>
                    </div><!--/.sel-que-list-->
					<div class="input_text_box_panel margin-top10"> 
						 <a class="custom_button_blank cancel right">CANCEL</a>
                        <a class="custom_button_blank reset right margin-right">RESET</a>
                        <a class="custom_button_blank continue right margin-right" id="exp-new-test-dtl-overlay">PROCCED</a>
                    </div>
              </div>     
                    
			        <!--SELECT CATEGORY CONTAINER START-->
        <div id="overlay-category-container" style="display:none">
            <div class="center-overlay">
                <div id="exp-test-container" class="exp-test-container">
                    <div class="std-new-test-detail width100 left">
                    <div class="heading-small" style="padding-left:0px"><span>TEST CATEGORY & LEVEL</span></div>
                    <div class="row-1">
                        <div class="gender_left">
                            <div class="title_inputbox">TEST LEVEL<sup><span class="required">*</span></sup></div>
                            <div class="oes-selectBox"  id="seller-selectBox-TL" data-tracker-selectBob="TL">
                                <div class="oes-selectBox-parent">
                                    <div class="oes-selectBox-parent-heading" id="seller-selectBox-TL-heading">SELECT TEST LEVEL</div>
                                    <span class="oes-selectBox-close-img" id="seller-selectBox-TL-img">&nbsp;</span>
                                </div>	
                                <div class="oes-selectBox-child" id="seller-selectBox-TL-child">
                                    <ul id="TL" data-multiple-select="false" data-select-type="TEST LEVEL">
                                        <li id="TL-0" class="oes-none-selection">No Selection</li>
                                        <li id="TL-1" class="oes-seller-child">Basic</li>
                                        <li id="TL-1" class="oes-seller-child">Advance</li>
                                    </ul>
                                </div>
                            </div>
                            <span class="eg_line"></span>
                        </div>
                        <div class="gender_left">
                            <div class="title_inputbox">TEST TYPE<sup><span class="required">*</span></sup></div>
                            <div class="oes-selectBox"  id="seller-selectBox-TT" data-tracker-selectBob="TT">
                                <div class="oes-selectBox-parent">
                                    <div class="oes-selectBox-parent-heading" id="seller-selectBox-TT-heading">SELECT TEST TYPE</div>
                                    <span class="oes-selectBox-close-img" id="seller-selectBox-TT-img">&nbsp;</span>
                                </div>	
                                <div class="oes-selectBox-child" id="seller-selectBox-TT-child">
                                    <ul id="TT" data-multiple-select="false" data-select-type="TEST TYPE">
                                        <li id="TT-0" class="oes-none-selection">No Selection</li>
                                        <li id="TT-1" class="oes-seller-child">Chapter Wise</li>
                                        <li id="TT-2" class="oes-seller-child">Topic Wise</li>
                                        <li id="TT-3" class="oes-seller-child">Mixed</li>
                                    </ul>
                                </div>
                            </div>
                            <span class="eg_line"></span>
                        </div>
                    </div>
					<div class="row-1">
                        <div class="gender_left">
                            <div class="title_inputbox">TEST VISIBILITY<sup><span class="required">*</span></sup></div>
                            <div class="oes-selectBox"  id="seller-selectBox-TV" data-tracker-selectBob="TV">
                                <div class="oes-selectBox-parent">
                                    <div class="oes-selectBox-parent-heading" id="seller-selectBox-TV-heading">SELECT VISIBILITY</div>
                                    <span class="oes-selectBox-close-img" id="seller-selectBox-TV-img">&nbsp;</span>
                                </div>	
                                <div class="oes-selectBox-child" id="seller-selectBox-TV-child">
                                    <ul id="TV" data-multiple-select="true" data-select-type="TEST VISIBILITY">
                                        <li id="TV-0" class="oes-none-selection">No Selection</li>
                                        <li id="TV-1" class="oes-seller-child">Default Group</li>
										<li id="TV-2" class="oes-seller-child">Own Groups</li>
										<li id="TV-3" class="oes-seller-child">Friends Groups</li>
										<li id="TV-4" class="oes-seller-child">Open Groups</li>
										<li id="TV-5" class="oes-seller-child">Custom</li>
                                    </ul>
                                </div>
                            </div>
                            <span class="eg_line"></span>
                        </div>
                        
                    </div>
					<div class="row-1">
                        <div class="gender_left">
                            <div class="input_text_box_panel">
								<div class="title_inputbox">NO. OF QUESTIONS<sup><span class="required">*</span></sup></div>
								<div class="oe-input-box-container">
									<input class="oe-input-box" placeholder="NO. of Question"/>
								</div>
								<span class="eg_line"></span>
							</div>
                        </div>
                        <div class="gender_left">
                            <div class="input_text_box_panel">
								<div class="title_inputbox">TIME DURATION E/Q<sup><span class="required">*</span></sup></div>
								<div class="oe-input-box-container">
									<input class="oe-input-box" placeholder="Time Duration E/Q"/>
								</div>
								<span class="eg_line"></span>
							</div>
                        </div>
                    </div>
                    <div class="row-1">
                        <div class="custom-heading-small" style="padding-left:0px"><span>TEST DETAIL</span></div>
                        <div class="input_text_box_panel">
                            <div class="title_inputbox">TEST TITLE<sup><span class="required">*</span></sup></div>
                            <div class="oe-input-box-container-long">
                                <input class="oe-input-box-long" placeholder="Test Title" id="reg_fullName"/>
                            </div>
                            <div class="input_box_bottom"><span class="eg_line"></span></div>
                        </div>
                        <div class="input_text_box_panel">
                           <div class="title_inputbox">TEST DESCRIPTION<sup><span class="required">*</span></sup></div>
                            <div class="oe-textarea-container">
                               <textarea class="oe-textarea" placeholder="Test Description" id="reg_address"></textarea>
                            </div>
                            <div class="input_box_bottom"><span class="eg_line"><span class="max_char" id="addressMaxChar">250</span></span></div>
                        </div>
                        <div class="input_text_box_panel">
                           <div class="title_inputbox">KEYWORD<sup><span class="required">*</span></sup></div>
                            <div class="oe-textarea-container">
                               <textarea class="oe-textarea" placeholder="Keywords" id="reg_address"></textarea>
                            </div>
                            <div class="input_box_bottom"><span class="eg_line"><span class="max_char" id="addressMaxChar">250</span></span></div>
                        </div>
                        <div class="exp_new-test-button-container"> 
							<a class="custom_button_blank new-test left margin-right">GENRATE NEW TEST</a>
							<a class="custom_button_blank reset left margin-right" >RESET</a> 
							<a class="custom_button_blank cancel left" id="exp-new-test-dtl-overlay-cnl">CANCLE</a>
						</div>
                    </div>
                </div>
					<div class="std-new-test-detail width100 left" id="custom_visible_search"></div>	
                </div>
            </div>
        </div>
    <!--SELECT CATEGORY CONTAINER END-->  
             
    </section><!--/#conatcat-info-->
    <%@include file="/resources/static/footer.jsp" %>
	<%@include file="/resources/static/javascript.jsp" %>
</body>
</html>
