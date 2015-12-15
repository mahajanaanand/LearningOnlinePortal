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
            <div class="custom-heading"><span>CATEGORY CLASSIFICATION</span></div>        
            <div class="categary-container">
                <div class="categary-top-container">
                    <div class="select-container left">
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
                    <div class="select-container left">
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
                    <div class="select-container left">
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
                    <div class="select-container left"> 
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
                    <div class="input_text_box_panel"> 
						 <div class="title_inputbox">CATEGORY ITEM<sup><span class="required">*</span></sup></div>	
                         <div class="oe-input-box-container">
                            <input class="oe-input-box" placeholder="ENTER TEXT" id="categoryText"/>
                        </div>
                        <div class="button-container">
							<a class="custom_button_blank left add-item margin-right" id="add_text_value">ADD ITEM</a>
                        	<a class="custom_button_blank left remove-item margin-right" id="remove_text_value">REMOVE ITEM</a>
                        	<a class="custom_button_blank left update-item" id="remove_text_value">UPDATE ITEM</a>	
                        </div>
						
                    </div>
                </div>
                <div class="categary-middle-container">
                     <div class="table-responsive format-table-list">
                        <table cellpadding="10px;" border="1" id="test_list">
                            <thead>
                                <tr>
                                    <th style="width:55px">#</th>
                                    <th>CATEGORY PATH</th>
                                    <th  style="width:110px">ACTION</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr class="odd">
                                    <td>1</td>
                                    <td>CA > CPT > CPT-Group-1 > <span class="main-topic">Indrustrial Account</span></td>
                                    <td style="text-align:center;"><a class="edit_row" href="#">&nbsp;</a><a class="delete_row" href="#">&nbsp
                                </tr>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div><!--/.row-->
        </div><!--/.container-->    
    </section><!--/#conatcat-info-->
        <%@include file="/resources/static/footer.jsp" %>
	<%@include file="/resources/static/javascript.jsp" %>
</body>
</html>