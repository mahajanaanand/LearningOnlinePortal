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
            <div class="custom-heading"><span>GENERATE NEW TEST</span></div>
            <div class="mid-center-container">
                <div class="std-new-test-detail-top">
                    <div class="std-new-test-detail left">
                    <div class="heading-small" style="padding-left:0px"><span>TEST CATEGORY & LEVEL</span></div>
                    <div class="row-1">
                        <div class="gender_left">
                            <div class="title_inputbox">COURSE<sup><span class="required">*</span></sup></div>
                            <div class="oes-selectBox"  id="seller-selectBox-COU" data-tracker-selectBob="COU">
                                <div class="oes-selectBox-parent">
                                    <div class="oes-selectBox-parent-heading" id="seller-selectBox-COU-heading">SELECT COURSE</div>
                                    <span class="oes-selectBox-close-img" id="seller-selectBox-COU-img">&nbsp;</span>
                                </div>	
                                <div class="oes-selectBox-child" id="seller-selectBox-COU-child">
                                    <ul id="COU" data-multiple-select="false" data-select-type="COURSE">
                                        <li id="COU-0" class="oes-none-selection">No Selection</li>
                                        <li id="COU-1" class="oes-seller-child">CA</li>
                                        <li id="COU-2" class="oes-seller-child">CS</li>
                                    </ul>
                                </div>
                            </div>
                            <span class="eg_line"></span>
                        </div>
                        <div class="gender_left">
                            <div class="title_inputbox">SUBJECT<sup><span class="required">*</span></sup></div>
                            <div class="oes-selectBox"  id="seller-selectBox-SUB" data-tracker-selectBob="SUB">
                                <div class="oes-selectBox-parent">
                                    <div class="oes-selectBox-parent-heading" id="seller-selectBox-SUB-heading">SELECT SUBJECT</div>
                                    <span class="oes-selectBox-close-img" id="seller-selectBox-SUB-img">&nbsp;</span>
                                </div>	
                                <div class="oes-selectBox-child" id="seller-selectBox-SUB-child">
                                    <ul id="SUB" data-multiple-select="false" data-select-type="SUBJECT">
                                        <li id="SUB-0" class="oes-none-selection">No Selection</li>
                                    </ul>
                                </div>
                            </div>
                            <span class="eg_line"></span>
                        </div>
                    </div>
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
                                    <div class="oes-selectBox-parent-heading" id="seller-selectBox-TV-heading">SELECT TEST VISIBILITY</div>
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
							<a class="custom_button_blank reset left margin-right">RESET</a> 
							<a class="custom_button_blank cancel left">CANCLE</a>
						</div>
                    </div>
                        
                </div>
                <div class="std-new-test-review right">
                    <div class="custom-heading-small"><span>TEST REVISION</span></div>    
                    <div class="mcq-list-revision">
                        <ul id="selected-list-revision">
                            <li>Introduction to Accounting<span class="noq-avail">300</span><div class="small-textbox"><div class="oe-input-box-container-small"><input class="oe-input-box-small" placeholder="NOQ" id="reg-1"/></div></div></li>
                            <li class="odd">Income and Expense Accounts<span class="noq-avail">300</span><div class="small-textbox"><div class="oe-input-box-container-small"><input class="oe-input-box-small" placeholder="NOQ" id="reg-1"/></div></div></li>
                            <li>Accountancy and Accounting<span class="noq-avail">300</span><div class="small-textbox"><div class="oe-input-box-container-small"><input class="oe-input-box-small" placeholder="NOQ" id="reg-1"/></div></div></li>
                            <li class="odd">Finance Test on Basic Theory of Accounting Concepts<span class="noq-avail">300</span><div class="small-textbox"><div class="oe-input-box-container-small"><input class="oe-input-box-small" placeholder="NOQ" id="reg-1"/></div></div></li>
                            <li>Final Accounts<span class="noq-avail">300</span><div class="small-textbox"><div class="oe-input-box-container-small"><input class="oe-input-box-small" placeholder="NOQ" id="reg-1"/></div></div></li>
                            <li class="odd">Accountant profile<span class="noq-avail">300</span><div class="small-textbox"><div class="oe-input-box-container-small"><input class="oe-input-box-small" placeholder="NOQ" id="reg-1"/></div></div></li>
                             <li class="no-bottom-border">Bank Accounts<span class="noq-avail">300</span><div class="small-textbox"><div class="oe-input-box-container-small"><input class="oe-input-box-small" placeholder="NOQ" id="reg-1"/></div></div></li>
                        </ul>
                    </div>
                       <div class="mcq-bottom-container">
                                <div class="mcq-total-que">
                                    <span class="total-que-tag">25</span>
                                    <div class="input_text_box_panel-small right">
                                        <div class="oe-input-box-container-small right">
                                            <input class="oe-input-box-small" placeholder="Time" id="reg"/>
                                        </div>
                                    </div>
                                </div>
                               
                           </div>
                </div>
            </div>
                <div class="std-new-test-detail-middle">
                     <!--MCQ CONTAINER START-->
                    <div id="overlay-MCQ-container">
                       <div class="inner-MCQ-container" style="display:block">
                            <div class="all-MCQ-list left" id="all-MCQ-list">
                                <div class="custom-heading-small" id="all-list-heading"></div>
                                <div class="mcq-list">
                                    <ul id="all-list">
                                        <li>Introduction to Accounting</li>
                                        <li class="odd">Income and Expense Accounts</li>
                                        <li>Accountancy and Accounting</li>
                                        <li class="odd">Finance Test on Basic Theory of Accounting Concepts</li>
                                        <li>Final Accounts</li>
                                        <li class="odd">Accountant profile</li>
                                         <li>Bank Accounts</li>
                                    </ul>
                                </div>
                            </div>
                           <div class="selected-MCQ-list right">
                             <div class="custom-heading-small" id="selected-list-heading"></div>
                                 <div class="mcq-list" >   
                                    <ul id="selected-list"></ul>
                                </div>
                           </div>
                            <div class="input_text_box_panel"> 
								<a class="custom_button_blank cancel right" id="cancel-MCQ">CANCLE</a>
							   	<a class="custom_button_blank reset right margin-right">RESET</a>
							   	<a class="custom_button_blank continue right margin-right">CONTINUE</a>
						   </div>
                        </div>
                        
                        <!--MIXED-->
                        <div class="inner-MCQ-container" style="display:block">
                            <div class="mixed-MCQ-list left" id="mixed-MCQ-list">
                                <div class="custom-heading-small" id="all-list-heading">LIST OF ALL CHAPTER & TOPIC</div>
                                <div class="mixed-list">
                                    <ul id="mixed-all-list">
                                        <li id="01" class="heading"><span id="01-heading">Introduction to Accounting</span>
                                            <ul data-parent-id="01">
                                                <li id="0101" class="ch">Cash Account</li>
                                                <li id="0102" class="ch">Sale Account</li>
                                                <li id="0103" class="ch">Purchase Account</li>
                                            </ul>
                                        </li>
                                        <li id="02" class="heading"><span id="02-heading">Accounting</span>
                                            <ul data-parent-id="02">
                                                <li id="0201" class="ch">Cash Account</li>
                                                <li id="0202" class="ch">Sale Account</li>
                                                <li id="0203" class="ch">Purchase Account</li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                           <div class="selected-mixed-MCQ-list right">
                             <div class="custom-heading-small" id="all-list-heading">LIST OF SELECTED CHAPTER & TOPIC</div>
                                <div class="mixed-list">
                                    <ul id="mixed-selected-list"></ul>
                                </div>
                           </div>
                         
                           <div class="input_text_box_panel"> 
								<a class="custom_button_blank cancel right" id="cancel-MCQ">CANCLE</a>
							   	<a class="custom_button_blank reset right margin-right">RESET</a>
							   	<a class="custom_button_blank continue right margin-right">CONTINUE</a>
								
						   </div>
                        </div>
                        
                    </div>
                    <!--MCQ CONTAINER END-->
                </div>
                <div class="std-new-test-detail-bottom"></div>
            </div>
        </div><!--/.container-->    
    </section><!--/#conatcat-info-->
    <%@include file="/resources/static/footer.jsp" %>
	<%@include file="/resources/static/javascript.jsp" %>
    <script type="text/javascript">
        $(document).ready(function () {
            $(document.body).on("click", "#all-list li",function (){
                alert("called");
				var text=$(this).text();
                var len=$('#selected-list').find("li").length;
                text=text+'';
                if(len%2==0){
                    $('#selected-list').append("<li>"+text+"</li>");
                    
                }else{
                    $('#selected-list').append("<li class='odd'>"+text+"</li>");
                }
                $(this).remove();
            }); 
             $(document.body).on("click", "#selected-list li",function (){
               alert("caledd");
			    var text=$(this).text();
                var len=$('#all-list').find("li").length;
                if(len%2==0){
                    $('#all-list').append("<li>"+text+"</li>");
                    
                }else{
                    $('#all-list').append("<li class='odd'>"+text+"</li>");
                }
                $(this).remove();
            }); 
            $("a#cancel-MCQ").on("click", function (){
                $("#overlay-MCQ-container").fadeOut(200);
            });  
            $("ul#TT").find("li#TT-1").on('click',function(){
                $("#overlay-MCQ-container").fadeIn(200);
                $("#selected-list-heading").text('LIST OF SELECTED CHAPTER');
                $("#all-list-heading").text('LIST OF ALL CHAPTER');
            });
            $("ul#TT").find("li#TT-2").on('click',function(){
                $("#overlay-MCQ-container").fadeIn(200);
                $("#selected-list-heading").text('LIST OF SELECTED TOPIC');
                $("#all-list-heading").text('LIST OF ALL TOPIC');
            });
        });
    </script>
</body>
</html>
