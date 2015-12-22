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
     <%@ page isELIgnored ="false" %>
     <c:set var="menuAction" value="<%=UserPrincipal.getMenuAction()%>"/>
   <c:choose>
	    <c:when test="${menuAction == '020011'}"><%@include file="../020011/editor_head.jsp"%></c:when>
	    <c:when test="${menuAction == '002011'}"><%@include file="../002011/expert_head.jsp"%></c:when>
	    <c:when test="${menuAction == '000211'}"><%@include file="../000211/stud_head.jsp"%></c:when>
	    <c:otherwise></c:otherwise>
	 </c:choose>   	
  		<section id="main-center-container">
        <div class="container" style="min-height:500px;">
                <div class="tab-button-container"> 
					<ul>
						<li><span class="custom_menu-button tab-active" data-index="4">EDIT PROFILE INFO</span></li>
						<li><span class="custom_menu-button" data-index="5">CHANGE PASSWORD</span></li>
						<li><span class="custom_menu-button" data-index="6">ACCOUNT DEACTIVE</span></li>
					</ul>
                </div>
  
   
    <div class="revision-panel-container" id="edit_profle_container" style="display:block;">
          <div class="custom-heading"><span>ACCOUNT PROFILE</span></div>
          <div class="test-list-table-container table-responsive format-table-list">
                <div class="info_container">
                    <div id="info_container">
                        <div class="info_heading_close" id="pr_info">PERSONAL INFORMATION</div>
                        <div class="info_heading_detail" id="pr_info_detail">
                        <div class="acc_info_row-1" id="pr_info_static">
                            <div class="table-responsive">
                            <table cellpadding="15px" class="collon">
                              
                                <tr>
                                    <th>Full&nbsp;Name</th>
                                    <td>John Rushing</</td>
                                    <th>DOB</th>
                                    <td>15-05-2015</</td>
                                </tr>
                                <tr>
                                    <th>Address</th>
                                    <td>117 W Mission St, Santa Barbara, CA 93101, United States</td>
                                    <th>Country</th>
                                    <td>US</td>
                                </tr>
                                <tr>
                                    <th>Gender</th>
                                    <td>Male</td>
                                    <th>State</th>
                                    <td>CA</td>
                                </tr>
                                <tr>
                                    <th>Email</th>
                                    <td>john.rushing@gmail.com</td>
                                    <th>City</th>
                                    <td>Santa Barbara</td>
                               </tr>
								<tr>
                                    <th>Security Number</th>
                                    <td>45x-5xx-6xx</td>
                                    <th>Mobile</th>
                                    <td>2356985633</td>
                               </tr>
                               
                            </table>
								<span class="btn_edit_info" title="EDIT INFO" data-type="1"></span>
                        </div>
                           
                    </div>
                    <div class="cat-row-1 no-display" id="pr_info_edit">
                         <div class="cat-col1-1 left padding-left" style="width:45%;">
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
                                            <input class="oe-input-box" placeholder="Date of Birth" id="reg_dob"/>
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
							<div class="input_text_box_panel margin-left5 margin-top25">
                            	<a class="custom_button_blank save left margin-right">SAVE RECORD</a>
								<a class="custom_button_blank reset left margin-right">RESET</a>
								<a class="custom_button_blank cancel left ">CANCEL</a>
                        	</div>
                        </div>
                         
                    </div><!--/.row-->
                        
                        </div>
                        
                    </div><!--id=info_container-->
                </div><!--/.info_container-->
                
<!--                EDUCATIONAL INFORMATION-->
                
                <div class="info_container">
                    <div id="info_container-2">
                        <div class="info_heading_close" id="ed_info"><span class="btn_info_icon_close">EDUCATIONAL INFORMATION</span></div>
                        <div class="info_heading_detail" id="ed_info_detail">
						<div class="cat-row-1 no-display" id="ed_info_edit">
						   <div class="cat-col1-1 left padding-left" style="width:45%;">
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
								<div class="input_text_box_panel margin-left5 margin-top25">
									<a class="custom_button_blank upload left margin-right" id="upload_education">UPLOAD CERTIFICATE</a>
									<a class="custom_button_blank save left">SAVE RECORD</a>
								</div>
							</div>
						</div><!--/.row-->  
                    <div class="table-responsive format-table-list" id="ed_info_static">
                        <table cellpadding="10px;" border="1" id="test_list">
                            <thead>
                                <tr>
                                    <th style="width:55px">#</th>
                                    <th>QUALIFICATION</th>
                                    <th>SPECIALIZATION</th>
                                    <th style="width:180px">DURATION</th>
                                    <th style="width:125px">UPLOAD&nbsp;STATUS</th>
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
                                    <td style="text-align:center;"><a class="edit_row" href="#" title="Edit record" data-type="2">&nbsp;</a><a class="delete_row" href="#" title="Delete record">&nbsp;</a></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    </div><!--/.info_heading_detail-->
                        </div><!--id=info_container-2-->
                </div><!--/.info_container-->
        <!--OCCUPATION INFORMATION-->
                <div class="info_container">
                    <div id="info_container-3">
                        <div class="info_heading_close" id="ocu_info"><span class="btn_info_icon_close">OCCUPATION INFORMATION</span></div>
                        <div class="info_heading_detail" id="ocu_info_detail">
							<div class="cat-row-1  no-display" id="ocu_info_edit">
							   <div class="cat-col1-1 left padding-left" style="width:45%;">
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
									<div class="input_text_box_panel margin-left5 margin-top25">
										<a class="custom_button_blank upload left margin-right" id="upload_occupation">UPLOAD CERTIFICATE</a>
										<a class="custom_button_blank save left">SAVE RECORD</a>
									</div>
								</div>
							</div><!--/.row--> 
							<div class="table-responsive format-table-list" id="ocu_info_static">
								<table cellpadding="10px;" border="1" id="test_list">
									<thead>
										<tr>
											<th style="width:55px">#</th>
											<th>EMPLOYER</th>
											<th>DESIGNATION</th>
											<th style="width:55px">YOE</th>
											<th style="width:180px">DURATION</th>
											<th style="width:125px">UPLOAD&nbsp;STATUS</th>
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
											<td style="text-align:center;"><a class="edit_row" href="#"  data-type="3">&nbsp;</a><a class="delete_row" href="#">
										</tr>

									</tbody>
								</table>
							</div>
                		</div><!--/.info_heading_detail-->
                 	</div><!--id=info_container-3-->
               </div><!--/.info_container-->
                
          <!--ACCOUNT INFORMATION-->
                <div class="info_container">
                    <div id="info_container-4">
                        <div class="info_heading_close" id="ACC_info"><span class="btn_info_icon_close">ACCOUNT INFORMATION</span></div>
                <div class="info_heading_detail" id="ACC_info_detail">
                 <div class="container contact-wrap clearfix"> 
                    <div class="inner-center-container">
                        <div class="margin-left5 margin-top10">
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
							<a class="custom_button_blank cancel right">CANCEL</a>
							<a class="custom_button_blank save right margin-right">SUBMIT CHANGE</a>
							
                    </div>
               </div>
            </div><!--/.info_heading_detail-->
            </div><!--id=info_container-4-->
                </div><!--info_container-->
       </div><!--main center container-->
          </div>

   <div class="revision-panel-container" id="change_password_container">
        <div class="custom-heading"><span>ACCOUNT RECOVERY</span></div>
        <div class="test-list-table-container table-responsive format-table-list">
			<!--Please do not change reset-password-container id it has css setting-->
         	<div class="clear-both center-div center-div-padding0" id="reset-password-container">
				<p>In order to reset secure password, Please enter the Email address, Old password and Security number you provided during the registration process.</p>
				<div class="table-div">
					<table class="no-border" cellpadding=8px;>
						<tr>
							<td>
								<div class="input_control">
									<div class="title_inputbox">EMAIL ADDRESS<sup><span class="required">*</span></sup></div>
									<div class="oe-input-box-container"><input type="text" id="userName" class="oe-input-box" placeholder="Email Adderess"/></div>
								</div>		
							</td>
							<td>
								<div class="input_control">
									<div class="title_inputbox">OLD PASSWORD<sup><span class="required">*</span></sup></div>
									<div class="oe-input-box-container"><input type="text" id="oldPassword" class="oe-input-box" placeholder="Old Password"/></div>
								</div>		
							</td>
							<td>
								<div class="input_control">
									<div class="title_inputbox">SECURITY NUMBER<sup><span class="required">*</span></sup></div>
									<div class="oe-input-box-container"><input type="text" id="securityNumber" class="oe-input-box" placeholder="Security Number"/></div>
								</div>		
							</td>
						</tr>
						<tr>
							<td>
								<div class="input_control">
									<div class="title_inputbox">NEW PASSWORD<sup><span class="required">*</span></sup></div>
									<div class="oe-input-box-container"><input type="text" id="newPassword" class="oe-input-box" placeholder="New Password"/></div>
								</div>		
							</td>
							<td>
								<div class="input_control">
									<div class="title_inputbox">RETYPE NEW PASSWORD<sup><span class="required">*</span></sup></div>
									<div class="oe-input-box-container"><input type="text" id="userName" class="oe-input-box" placeholder="Retype New Password"/></div>
								</div>		
							</td>
							<td>
								<div class="input_control">
									<div class="title_inputbox">SECURE CODE<sup><span class="required">*</span></sup></div>
									<div class="oe-input-box-container"><input type="text" id="userName" class="oe-input-box" placeholder="Secure Code"/></div>
								</div>		
							</td>
						</tr>
						<tr>
							
							<td>
								<div class="input_text_box_panel" style="padding-top:42px;">
									<a class="custom_button_blank save left">SUBMIT CHANGE</a>
								</div>
							</td>
						</tr>
					</table>
				</div>
			</div>	     
        </div>
    </div> 
                
    <div class="revision-panel-container" id="account_deactive_container">
         <div class="custom-heading"><span>ACCOUNT DEACTIVE</span></div>
            <div class="test-list-table-container table-responsive format-table-list">
                 <div class="custom-heading">Deactivating & Deleting Account</div>
				 <p>Accounts are permanently deleted 30 days from the date they were deactivated. After 30 days, deactivated accounts cannot be reactivated. If it has been less than 30 days, follow the steps below to reactivate your account.</p>
				 <div class="custom-heading">To reactivate your account:</div>
				<ul class="steps_number">
					<li>Visit Objectivestudy.com and click on Login</li>
					<li>Enter your account username, and your password.</li>
					<li>Once you click Login Check, you will be redirect for account reactivation process.</li>
					<li>You'll see your home page if reactivation was successful. Your account data may take a few minutes to fully restore.</li>
				</ul>
				<p class="desc">By clicking on "ACCOUNT DEACTIVE" button, Your account will be closed with immediate effect.</p>
				<div class="input_text_box_panel center" style="padding-top:32px;">
					<a class="custom_button_blank deactive left">ACCOUNT DEACTIVE</a>
				</div>
			</div>
			
		   </div>
        </div><!--/.container-->  
			
    </section><!--/#conatcat-info-->
        
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
                        <a class="custom_button_blank choose-file left margin-right">CHOOSE FILE</a>
                         <input type="file" class="upload">
                     </div>
                     <a class="custom_button_blank upload left margin-right" id="">UPLOAD</a>
                     <a class="custom_button_blank reset left margin-right" id="">RESET</a>
					 <a class="custom_button_blank cancel left" id="cancel-upload">CANCEL</a>
                </div>

            </div>  
        </div>
        <!--UPLOAD DOCUMENT CONTAINER END-->
        
        <!--SELECT CATEGORY CONTAINER START-->
		    <div id="overlay-category-container" >
        <div class="center-overlay">
            <div id="category-container" class="category-container">
                <div class="custom-heading"><span>CATEGORY CLASSIFICATION</span></div>
                <div class="selection-que-categoty">
                    <div class="cat-selection-que left">
                        <div class="title_inputbox"><sup><span class="required"></span></sup></div>
                         <div class="title_inputbox cat-selection-que">How would like to select category :<sup><span class="required">*</span></sup></div>
                    </div>
                    <div class="dob_right">
                        <div class="input_text_box_panel">
                            <div class="title_inputbox"><sup><span class="required"></span></sup></div>
                            <div class="oes-selectBox"  id="seller-selectBox-CAT" data-tracker-selectBob="CAT" style="margin-top: 9px;">
                            <div class="oes-selectBox-parent">
                                <div class="oes-selectBox-parent-heading" id="seller-selectBox-CAT-heading">SELECT CATEGORY</div>
                                <span class="oes-selectBox-close-img" id="seller-selectBox-CAT-img">&nbsp;</span>
                            </div>	
                            <div class="oes-selectBox-child" id="seller-selectBox-CAT-child">
                                <ul id="CAT" data-multiple-select="false" data-select-type="CATEGORY">
                                    <li id="CAT-0" class="oes-none-selection">No Selection</li>
                                    <li id="CAT-1" class="oes-seller-child">Course Wise</li>
                                    <li id="CAT-2" class="oes-seller-child">Subject Wise</li>	
                                    <li id="CAT-3" class="oes-seller-child">Chapter Wise</li>
                                    <li id="CAT-4" class="oes-seller-child">Topic Wise</li>
                                </ul>
                            </div>
                        </div>
                        <span class="eg_line"></span>
                        </div>
                    </div>
                </div>
                <div class="cat-row-1" id="cat-selection-container">
                    <div class="cat-col1-1">
                        <div class="col-heading">COURSE</div>    
                        <div class="col-list-container">
                            <ul>
                                <li class="">CA</li>
                            </ul>
                        </div>    
                    </div>
                    <div class="cat-col1-2">
                    <div class="col-heading">SUBJECT</div>    
                        <div class="col-list-container">
                            <ul>
                                <li>Account</li>
                                <li>Tax</li>
                                <li>Statistic</li>
                            </ul>
                        </div>
                    </div>
                    <div class="cat-col1-3">
                        <div class="col-heading">CHAPTER</div>    
                        <div class="col-list-container">
                            <ul>
                                <li>Account</li>
                                <li>Tax</li>
                                <li>Statistic</li>
                            </ul>
                        </div>
                    </div>
                    <div class="cat-col1-4">
                        <div class="col-heading">TOPIC</div>    
                        <div class="col-list-container">
                            <ul>
                                <li>Account</li>
                                <li>Tax</li>
                                <li>Statistic</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="selected-cat-container">
                    <ul id="selected-cat-container">
                        <li>Account</li>
                        <li>Tax</li>
                        <li>Statistic</li>
                    </ul>
                </div>
               			<a class="custom_button_blank cancel right" id="cancel-category">CANCEL</a>
                        <a class="custom_button_blank reset right margin-right">RESET</a>
                        <a class="custom_button_blank continue right margin-right">PROCCED</a>
                
            </div>
        </div>
    </div>
    	<!--SELECT CATEGORY CONTAINER END-->
		  <%@include file="/resources/static/footer.jsp" %>
		<%@include file="/resources/static/javascript.jsp" %>
	<script type="text/javascript">
        $( document ).ready(function() {
        	$(".btn_edit_info, .edit_row").on('click',function (){
        		var data_Type=$(this).attr("data-type");
				switch(data_Type){
					case "1":
						{
							$("#pr_info_static").hide();   	
							$("#pr_info_edit").css("height","400px");
							$("#pr_info_edit").fadeIn(500);		
							break;
						}
					case "2":
						{
							$("#ed_info_static").hide();   	
							$("#ed_info_edit").fadeIn(500);		
							break;
						}	
					case "3":
						{
							$("#ocu_info_static").hide();   	
							$("#ocu_info_edit").fadeIn(500);		
							break;
						}		
				}  	
        });	
    });
    </script>
</body>
</html>
