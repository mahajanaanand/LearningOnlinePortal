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
   	<%@include file="group_head.jsp"%>  
		<section class="container">
		    <div class="custom-heading"><span>FIND GROUP</span></div>
		            <div class="find-group-filter-container">
		                <table>
		                    <tr>
		                        <td class="no-padding-left">
		                            <div class="input_text_box_panel">
		                                <div class="title_inputbox">GROUP UID<sup><span class="required">*</span></sup></div>
		                                <div class="oe-input-box-container">
		                                <input class="oe-input-box" placeholder="Group Id" id="gup_id"/>
		                                </div>
		                            </div>
		                        </td>
		                        
		                        <td>
		                            <div class="input_text_box_panel">
		                                <div class="title_inputbox">GROUP NAME<sup><span class="required">*</span></sup></div>
		                                <div class="oe-input-box-container">
		                                <input class="oe-input-box" placeholder="Group Name" id="gup_name"/>
		                                </div>
		                            </div>
		                        </td>
		                       
		                         <td>
		                             <div class="title_inputbox">GROUP CATEGORY<sup><span class="required">*</span></sup></div>
		                           <div class="oes-selectBox"  id="seller-selectBox-GC" data-tracker-selectBob="GC">
		                            <div class="oes-selectBox-parent">
		                                    <div class="oes-selectBox-parent-heading" id="seller-selectBox-GC-heading">SELECT CATEGORY</div>
		                                    <span class="oes-selectBox-close-img" id="seller-selectBox-GC-img">&nbsp;</span>
		                                </div>	
		                                <div class="oes-selectBox-child" id="seller-selectBox-GC-child">
		                                    <ul id="GC" data-multiple-select="false" data-select-type="GROUP CATEGORY">
		                                        <li id="GC-0" class="oes-none-selection filterOption">No Selection</li>
		                                    </ul>
		                                </div>
		                            </div>
		                        </td>
		                        
		                        <td>
		                            <div class="title_inputbox">GROUP TYPE<sup><span class="required">*</span></sup></div>
									  <div class="oes-selectBox"  id="seller-selectBox-GT" data-tracker-selectBob="GT">
										<div class="oes-selectBox-parent">
												<div class="oes-selectBox-parent-heading" id="seller-selectBox-GT-heading">SELECT TYPE</div>
												<span class="oes-selectBox-close-img" id="seller-selectBox-GT-img">&nbsp;</span>
											</div>	
											<div class="oes-selectBox-child" id="seller-selectBox-GT-child">
												<ul id="GT" data-multiple-select="false" data-select-type="GROUP TYPE">
													<li id="GT-0" class="oes-none-selection filterOption">No Selection</li>
												</ul>
											</div>
										</div>
		                        </td>
		                        <td class="no-border-right">
		                             <div class="title_inputbox"><sup><span class="required"></span></sup></div>
		                             <div class="input_text_box_panel">
		                                <a class="custom_button_blank find-group left">FIND GROUP</a>
		                            </div>
		                        </td>
		                    </tr>
		                </table>
		              </div>
		              <div class="find-grup-detail-pic-container">
		                  <ul>
		                    <li>
		                        <div class="find-group-col">
		                          <div class="group-photo-logo-container">
		                               <div class="img-logo-container">
		                                    <img class="img-logo" src="${cdnStatic}/images/no_img.png" width="115" height="104"/>
		                                </div>
		                           </div>  
		                            <div class="find-grup-groupdetail-container table-responsive">
		                                <table cellpadding="6px;">
		                                    <tr>
		                                        <th>Name </th>
		                                        <td>The Java Expert (#14528596)</td>
		                                    </tr>
		                                    <tr>
		                                        <th>Owner</th>
		                                        <td><a href="#" class="profile-hover">John Rushing</a></td>
		                                    </tr>
		                                    <tr>
		                                        <th>Category</th>
		                                        <td><a href="#" class="subj_2_cat">Java</a></td>
		                                    </tr>
		                                    <tr>
		                                        <th>Member(s)</th>
		                                        <td>14525</td>
		                                    </tr>
		                                    <tr>
		                                        <th>Rank</th>
		                                        <td>#1254</td>
		                                    </tr>
		                                </table>
										<div class="group-button">
		                                
		                            </div>
										
		                            </div>
		                            
		                        </div>
								<div class="button-container">
									<a class="join-group-req custom_button_blank left margin-right" href="#">JOIN GROUP</a>
									<a class="join-group-home custom_button_blank left" href="#">GROUP HOME</a>
		                        </div>
		                    </li>
		                    <li>
		                        <div class="find-group-col">
		                          <div class="group-photo-logo-container">
		                               <div class="img-logo-container">
		                                   <img class="img-logo" src="${cdnStatic}/images/no_img.png" width="115" height="104"/>
		                                </div>
		                           </div>  
		                            <div class="find-grup-groupdetail-container table-responsive">
		                                <table cellpadding="6px;">
		                                    <tr>
		                                        <th>Name </th>
		                                        <td>The Java Expert (#14528596)</td>
		                                    </tr>
		                                    <tr>
		                                        <th>Owner</th>
		                                        <td><a href="#" class="profile-hover">John Rushing</a></td>
		                                    </tr>
		                                    <tr>
		                                        <th>Category</th>
		                                        <td><a href="#" class="subj_2_cat">Java</a></td>
		                                    </tr>
		                                    <tr>
		                                        <th>Member(s)</th>
		                                        <td>14525</td>
		                                    </tr>
		                                    <tr>
		                                        <th>Rank</th>
		                                        <td>#1254</td>
		                                    </tr>
		                                </table>
										<div class="group-button">
		                                
		                            </div>
										
		                            </div>
		                            
		                        </div>
								<div class="button-container">
									<a class="join-group-req custom_button_blank left margin-right" href="#">JOIN GROUP</a>
									<a class="join-group-home custom_button_blank left" href="#">GROUP HOME</a>
		                        </div>
		                    </li> 
							  <li>
		                        <div class="find-group-col">
		                          <div class="group-photo-logo-container">
		                               <div class="img-logo-container">
		                                    <img class="img-logo" src="${cdnStatic}/images/no_img.png" width="115" height="104"/>
		                                </div>
		                           </div>  
		                            <div class="find-grup-groupdetail-container table-responsive">
		                                <table cellpadding="6px;">
		                                    <tr>
		                                        <th>Name </th>
		                                        <td>The Java Expert (#14528596)</td>
		                                    </tr>
		                                    <tr>
		                                        <th>Owner</th>
		                                        <td><a href="#" class="profile-hover">John Rushing</a></td>
		                                    </tr>
		                                    <tr>
		                                        <th>Category</th>
		                                        <td><a href="#" class="subj_2_cat">Java</a></td>
		                                    </tr>
		                                    <tr>
		                                        <th>Member(s)</th>
		                                        <td>14525</td>
		                                    </tr>
		                                    <tr>
		                                        <th>Rank</th>
		                                        <td>#1254</td>
		                                    </tr>
		                                </table>
										<div class="group-button">
		                                
		                            </div>
										
		                            </div>
		                            
		                        </div>
								<div class="button-container">
									<a class="join-group-req custom_button_blank left margin-right" href="#">JOIN GROUP</a>
									<a class="join-group-home custom_button_blank left" href="#">GROUP HOME</a>
		                        </div>
		                    </li>
		                    <li>
		                        <div class="find-group-col">
		                          <div class="group-photo-logo-container">
		                               <div class="img-logo-container">
		                                    <img class="img-logo" src="${cdnStatic}/images/no_img.png" width="115" height="104"/>
		                                </div>
		                           </div>  
		                            <div class="find-grup-groupdetail-container table-responsive">
		                                <table cellpadding="6px;">
		                                    <tr>
		                                        <th>Name </th>
		                                        <td>The Java Expert (#14528596)</td>
		                                    </tr>
		                                    <tr>
		                                        <th>Owner</th>
		                                        <td><a href="#" class="profile-hover">John Rushing</a></td>
		                                    </tr>
		                                    <tr>
		                                        <th>Category</th>
		                                        <td><a href="#" class="subj_2_cat">Java</a></td>
		                                    </tr>
		                                    <tr>
		                                        <th>Member(s)</th>
		                                        <td>14525</td>
		                                    </tr>
		                                    <tr>
		                                        <th>Rank</th>
		                                        <td>#1254</td>
		                                    </tr>
		                                </table>
										<div class="group-button">
		                                
		                            </div>
										
		                            </div>
		                            
		                        </div>
								<div class="button-container">
									<a class="join-group-req custom_button_blank left margin-right" href="#">JOIN GROUP</a>
									<a class="join-group-home custom_button_blank left" href="#">GROUP HOME</a>
		                        </div>
		                    </li> 
		                  </ul>
		               </div>
		            
		<!--      HOVER DIV INFO SUBJECT 2 CATEGORY DETAILS       -->            
		            <div class="cat-hover-detail" id="cat-hover-detail"><span class="arrow-up"></span>CA > CPT > CPT-Group-1 > Final > Industrial Accounting</div>
		<!--      HOVER DIV INFO REGISTER DETAILS    -->
		           <div class="profile-hover-detail" id="profile-hover-detail"><span class="arrow-up-profile"></span>
		                    <div class="hover-photo-100X100-container left">
		                        <div class="hover-photo-100X100">
		                            <img src="${cdnStatic}/images/no_img.png" class="img-logo-100X100" width="115" height="104">
		                        </div>
		                        <div class="profile-hover-rank">#1254852</div>
		                    </div>
		                    <div class="hover-detail-container table-responsive left">
		                        <table>
		                            <tr>
		                                <th>NAME</th>
		                                <td>John Rushing</td>
		                            </tr>
		                            <tr>
		                                <th>ROLE</th>
		                                <td>Student</td>
		                            </tr>
		                            <tr>
		                                <th>CATEGORY</th>
		                                <td>Accounts</td>
		                            </tr>
		                            <tr class="no-border-bottom">
		                                <th>GROUP</th>
		                                <td>The Java Expert</td>
		                            </tr>
		                        </table>
		                    </div>
		                </div>
		</section>
		  <%@include file="/resources/static/footer.jsp" %>
	<%@include file="/resources/static/javascript.jsp" %>
</body>
</html>