<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="/resources/static/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <title>Register</title>
    <%@include file="common_head.jsp"%>
    <fieldset class="container" id="step2">
        <div class="process_show-2">&nbsp;</div>    
            <div class="container contact-wrap clearfix"> 
                <div class="inner-center-container">
                    <div class="cat-row-1">
                        <div class="custom-heading"><span>PERSONAL INFORMATION</span></div>
                        <div class="cat-col1-1 left" style="width:45%;">
                           <div class="input_text_box_panel">
                                <div class="title_inputbox">FULL NAME<sup><span class="required">*</span></sup></div>
                                <div class="oe-input-box-container-long">
                                    <input class="oe-input-box-long" placeholder="Full Name" id="reg_fullName"/>
                                </div>
                                <div class="input_box_bottom"><span class="eg_line"></span></div>
                            </div>
                            <div class="input_text_box_panel">
                                <div class="title_inputbox">EMAIL<sup><span class="required">*</span></sup></div>
                                    <div class="oe-input-box-container-long">
                                        <input class="oe-input-box-long" placeholder="Email Address" id="reg_email"/>
                                    </div>
                                <span class="eg_line"></span>
                            </div>
                             <div class="input_text_box_panel">
                                <div class="title_inputbox">MOBILE<sup><span class="required">*</span></sup></div>
                                <div class="oe-input-box-container-long">
                                    <input class="oe-input-box-long" placeholder="Mobile No." id="reg_mobile"/>
                                </div>
                                <span class="eg_line"></span>
                            </div>
                            <div>
                                <div class="gender_left">
                                    <div class="title_inputbox">GENDER<sup><span class="required">*</span></sup></div>
                                    <div class="oes-selectBox"  id="seller-selectBox-GD" data-tracker-selectBob="GD" style="margin-top: 9px;">
                                        <div class="oes-selectBox-parent">
                                            <div class="oes-selectBox-parent-heading" id="seller-selectBox-GD-heading">SELECT GENDER</div>
                                            <span class="oes-selectBox-close-img" id="seller-selectBox-GD-img">&nbsp;</span>
                                        </div>	
                                        <div class="oes-selectBox-child" id="seller-selectBox-GD-child">
                                            <ul id="GD" data-multiple-select="false" data-select-type="GENDER">
                                                <li id="GD-0" class="oes-none-selection">No Selection</li>
                                                <li id="GD-1" class="oes-seller-child">Male</li>
                                                <li id="GD-2" class="oes-seller-child">Female</li>
                                                <li id="GD-3" class="oes-seller-child">Other</li>

                                            </ul>
                                        </div>
                                    </div>
                                    <span class="eg_line"></span>
                                </div>
                                <div class="dob_right">
                                    <div class="input_text_box_panel">
                                        <div class="title_inputbox">DOB<sup><span class="required">*</span></sup></div>
                                        <div class="oe-input-box-container">
                                            <input class="oe-input-box" placeholder="Date of Birthday" id="reg_dob"/>
                                        </div>
                                        <span class="eg_line"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="cat-col1-2 right" style="width:34%; float:right">
                            <div class="input_text_box_panel">
                                <div class="title_inputbox">COUNTRY<sup><span class="required">*</span></sup></div>
                                    <div class="oe-input-box-container-long">
                                        <input class="oe-input-box-long" placeholder="Country" id="reg_country"/>
                                    </div>
                                    <span class="eg_line"></span>
                            </div>
                            <div class="input_text_box_panel">
                                <div class="title_inputbox">STATE<sup><span class="required">*</span></sup></div>
                                    <div class="oe-input-box-container-long">
                                        <input class="oe-input-box-long" placeholder="State" id="reg_state"/>
                                    </div>
                                    <span class="eg_line"></span>
                            </div>
                            <div class="input_text_box_panel">
                                <div class="title_inputbox">CITY<sup><span class="required">*</span></sup></div>
                                    <div class="oe-input-box-container-long">
                                        <input class="oe-input-box-long" placeholder="City" id="reg_city"/>
                                    </div>
                                    <span class="eg_line"></span>
                            </div>
                             <div class="input_text_box_panel">
                               <div class="title_inputbox">PERMANENT ADDRESS<sup><span class="required">*</span></sup></div>
                                <div class="oe-textarea-container">
                                   <textarea class="oe-textarea" placeholder="Permanent Address" id="reg_address"></textarea>
                                </div>
                                <div class="input_box_bottom"><span class="eg_line"><span class="max_char" id="addressMaxChar">250</span></span></div>
                            </div>
                        </div>
                    </div><!--/.row-->
                    <div class="cat-row-1">
                        <div class="custom-heading"><span>EDUCATIONAL INFORMATION</span></div>
                        <div class="cat-col1-1 left" style="width:45%;">
                            <div class="col-sm-5 left" style="width:526px;">
                                <div class="input_text_box_panel">
                                    <div class="title_inputbox">QUALIFICATION<sup><span class="required">*</span></sup></div>
                                    <div class="oe-input-box-container-long">
                                        <input class="oe-input-box-long" placeholder="Qualification" id="reg_qualification"/>
                                    </div>
                                    <span class="eg_line"></span>
                                </div>
                                 <div class="input_text_box_panel">
                                    <div class="title_inputbox">SPECILIZATION<sup><span class="required">*</span></sup></div>
                                    <div class="oe-input-box-container-long">
                                        <input class="oe-input-box-long" placeholder="Specilization" id="reg_specilization"/>
                                    </div>
                                    <span class="eg_line"></span>
                                </div>
                                 <div class="input_text_box_panel">
                                    <div class="title_inputbox">UNIVERSITY<sup><span class="required">*</span></sup></div>
                                    <div class="oe-input-box-container-long">
                                        <input class="oe-input-box-long" placeholder="University" id="reg_university"/>
                                    </div>
                                    <span class="eg_line"></span>
                                </div>              
                            </div>
                        </div>
                        <div class="cat-col1-2 right" style="width:34%; float:right">
                            <div>
                                <div class="gender_left">
                                    <div class="input_text_box_panel">
                                        <div class="title_inputbox">DURATION FROM<sup><span class="required">*</span></sup></div>
                                        <div class="oe-input-box-container">
                                            <input class="oe-input-box" placeholder="Date From" id="reg_dateFrom"/>
                                        </div>
                                        <span class="eg_line"></span>
                                    </div>
                                </div>
                                <div class="dob_right">
                                    <div class="input_text_box_panel">
                                        <div class="title_inputbox">TO<sup><span class="required">*</span></sup></div>
                                        <div class="oe-input-box-container">
                                            <input class="oe-input-box" placeholder="Date To" id="reg_dateTo"/>
                                        </div>
                                        <span class="eg_line"></span>
                                    </div>
                                </div>
                                <div class="input_text_box_panel">
                                   <div class="title_inputbox">REMARK<sup><span class="required"></span></sup></div>
                                    <div class="oe-textarea-container">
                                       <textarea class="oe-textarea" placeholder="Remark" id="reg_remark"></textarea>
                                    </div>
                                    <div class="input_box_bottom"><span class="eg_line"><span class="max_char" id="remarkDescMaxChar">250</span></span></div>
                                </div>
                            </div>
                            <div class="input_text_box_panel button-container">
                                <a class="custom_button_blank upload left margin-right" id="upload_education">UPLOAD CERTIFICATE</a>
                                <a class="custom_button_blank save left">SAVE RECORD</a>
                            </div>
                        </div>
                    </div>        
                </div>
                <div class="mid_container">
                     <div class="table-responsive format-table-list">
                        <table cellpadding="10px;" border="1" id="test_list">
                            <thead>
                                <tr>
                                    <th style="width:55px">#</th>
                                    <th>QUALIFICATION</th>
                                    <th>SPECIALIZATION</th>
                                    <th style="width:180px">DURATION</th>
                                    <th style="width:125px">UPLOAD STATUS</th>
                                    <th  style="width:110px; text-align:center;">ACTION</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr class="odd">
                                    <td>1</td>
                                    <td>Master of Computer Application </td>
                                    <td>Computer Engineeing</td>
                                    <td>31/12/2009 - 31/12/2009</td>
                                    <td><span class="upload_status_success">&nbsp;</span></td>
                                    <td   style="text-align:center;"><a class="edit_row" href="#" title="Edit record">&nbsp;</a><a class="delete_row" href="#" title="Delete record">&nbsp;</a></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="input_text_box_panel"> 
                    <a class="custom_button_blank continue" id="step2-3">CONTINUE</a>
                </div>
        </fieldset>
        <fieldset class="container" style="display:none;" id="step3">
            <div class="process_show-3">&nbsp;</div>   
            <div class="container contact-wrap clearfix">
                <div class="inner-center-container">
                    <div class="cat-row-1">
                        <div class="custom-heading"><span>OCCUPATION INFORMATION</span></div>
                        <div class="cat-col1-1 left" style="width:45%;">
                            <div class="input_text_box_panel">
                                <div class="title_inputbox">EMPLOYER<sup><span class="required">*</span></sup></div>
                                <div class="oe-input-box-container-long">
                                    <input class="oe-input-box-long" placeholder="Employer" id="reg_employer"/>
                                </div>
                                <span class="eg_line"></span>
                            </div>
                            <div class="input_text_box_panel">
                            <div class="title_inputbox">DESIGNATION<sup><span class="required">*</span></sup></div>
                            <div class="oe-input-box-container-long">
                                <input class="oe-input-box-long" placeholder="Designation" id="reg_designation"/>
                            </div>
                            <span class="eg_line"></span>
                        </div>
                         <div class="input_text_box_panel">
                            <div class="title_inputbox">YEAR OF EXPERIANCE<sup><span class="required">*</span></sup></div>
                            <div class="oe-input-box-container-long">
                                <input class="oe-input-box-long" placeholder="Year of Experiance" id="reg_yoe"/>
                            </div>
                            <span class="eg_line"></span>
                        </div>
                        </div>
                        <div class="cat-col1-2 right" style="width:34%; float:right">
                            <div>
                                <div class="gender_left">
                                    <div class="input_text_box_panel">
                                        <div class="title_inputbox">DURATION FROM<sup><span class="required">*</span></sup></div>
                                        <div class="oe-input-box-container">
                                            <input class="oe-input-box" placeholder="Date From" id="reg_dateFrom_emp"/>
                                        </div>
                                        <span class="eg_line"></span>
                                    </div>
                                </div>
                                <div class="dob_right">
                                    <div class="input_text_box_panel">
                                        <div class="title_inputbox">TO<sup><span class="required">*</span></sup></div>
                                        <div class="oe-input-box-container">
                                            <input class="oe-input-box" placeholder="Date To" id="reg_dateTo_emp"/>
                                        </div>
                                        <span class="eg_line"></span>
                                    </div>
                                </div>
                                <div class="input_text_box_panel">
                                   <div class="title_inputbox">REMARK<sup><span class="required"></span></sup></div>
                                    <div class="oe-textarea-container">
                                       <textarea class="oe-textarea" placeholder="Remark" id="reg_emp_remark"></textarea>
                                    </div>
                                    <div class="input_box_bottom"><span class="eg_line"><span class="max_char" id="offerDescMaxChar">250</span></span></div>
                                </div>
                            </div>
                            <div class="input_text_box_panel button-container">
                                 <a class="custom_button_blank upload left  margin-right" id="upload_occupation">UPLOAD CERTIFICATE</a>
                                <a class="custom_button_blank save left">SAVE RECORD</a>
                            </div>
                        </div>
                    </div>
                </div>
           </div> 
            <div class="mid_container">
                <div class="table-responsive format-table-list">
                    <table cellpadding="10px;" border="1" id="test_list">
                        <thead>
                            <tr>
                                <th style="width:55px">#</th>
                                <th>EMPLOYER</th>
                                <th>DESIGNATION</th>
                                <th style="width:55px">YOE</th>
                                <th style="width:180px">DURATION</th>
                                <th style="width:125px">UPLOAD STATUS</th>
                                <th  style="width:110px">ACTION</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="odd">
                                <td>1</td>
                                <td>Favicon</td>
                                <td>Software Developer</td>
                                <td>3.5</td>
                               <td>31/12/2009 - 31/12/2009</td>
                               <td><span class="upload_status_success">&nbsp;</span></td>
                                <td   style="text-align:center;"><a class="edit_row" href="#" title="EDIT RECORD">&nbsp;</a><a class="delete_row" href="#" title="DELETE RECORD">&nbsp
                            </tr>

                        </tbody>
                    </table>
                </div>
            </div>
            <div class="container contact-wrap clearfix"> 
                <div class="inner-center-container">
                        <div class="custom-heading"><span>ACCOUNT INFORMATION</span></div>
                      <div>
                        <div class="gender_left">
                            <div class="title_inputbox">ROLE<sup><span class="required">*</span></sup></div>
                            <div class="oes-selectBox"  id="seller-selectBox-ROLE" data-tracker-selectBob="ROLE" style="margin-top: 9px;">
                                <div class="oes-selectBox-parent">
                                    <div class="oes-selectBox-parent-heading" id="seller-selectBox-ROLE-heading">SELECT ROLE</div>
                                    <span class="oes-selectBox-close-img" id="seller-selectBox-ROLE-img">&nbsp;</span>
                                </div>	
                                <div class="oes-selectBox-child" id="seller-selectBox-ROLE-child">
                                    <ul id="ROLE" data-multiple-select="false" data-select-type="ROLE">
                                        <li id="ROLE-0" class="oes-none-selection">No Selection</li>
                                        <li id="ROLE-1" class="oes-seller-child">Student</li>
                                        <li id="ROLE-2" class="oes-seller-child">Teacher</li>
                                        <li id="ROLE-3" class="oes-seller-child">Expert</li>
                                        <li id="ROLE-4" class="oes-seller-child">Editor</li>
                                    </ul>
                                </div>
                            </div>
                            <span class="eg_line"></span>
                        </div>
                        <div class="dob_right">
                            <div class="title_inputbox">CATEGORY<sup><span class="required">*</span></sup></div>
                            <div class="btn-select-category" id="btn-select-category"></div>
                        </div>
                    </div>    
                </div><!--/.row-->
                <div class="input_text_box_panel"> 
                  <a class="custom_button_blank create-account right" id="step2-3">REGISTER</a>
                  <a class="custom_button_blank back right margin-right" id="step3-2">BACK</a>
                </div>
            </div>
        </fieldset>
        
        <!--UPLOAD DOCUMENT CONTAINER START-->
        <div id="overlay-upload-document-container">
           <div class="inner-uploads-container">
                <div class="uploading-guidline">
                   <div class="custom-heading-small">Guidelines for uploading documents</div>
                    <div class="overlay-heading">Please use the following guidelines when uploading your supporting documents. Up until the application deadline</div>
                    <ul>
                        <li>Upload scans of the original documents, i.e. the documents given to you by the issuing institution/orgnization.</li>
                        <li>The preferred document format is PDF, PNG or JPG. Do not upload ZIP, RAR or other compressed files as these cannot be opened in our document viewer.</li>
                        <li>Scanned documents must be clear and legible. They must appear right-side up when seen in a standard document viewer. Also make sure that the entire document,  including the reverse side, is included in the scan.</li>
                    </ul>
                </div>
               
               <div class="file-upload-container">
                    <div class="input_text_box_panel"> 
                        <div class="upload_file_name">File Name</div>
                        <div class="input_box_bottom"><span class="eg_line"></span></div>
                    </div> 
               </div>
                <div class="input_text_box_panel"> 
                    <div class="button_container upload_button">
                        <a class="custom_button_blank choose-file left  margin-right">CHOOSE FILE</a>
                         <input type="file" class="upload">
                     </div>
                     <a class="custom_button_blank upload left margin-right">UPLOAD</a>
                     <a class="custom_button_blank reset left margin-right">RESET</a>
					<a class="custom_button_blank cancel left" id="cancel-upload">CANCEL</a>
					
                </div>

            </div>  
        </div>
        <!--UPLOAD DOCUMENT CONTAINER END-->
    <%@include file="/resources/static/categoryClaasification.jsp" %>	
    <%@include file="/resources/static/footer.jsp" %>
	<%@include file="/resources/static/javascript.jsp" %>
    <script type="text/javascript">
        $("#step2-3").on("click", function (){
            $("#step3").fadeIn(500);
            $("#step2").hide();
        });
         $("#step3-2").on("click", function (){
            $("#step2").fadeIn(300);
            $("#step3").hide();
        });
    </script>
</body>
</html>