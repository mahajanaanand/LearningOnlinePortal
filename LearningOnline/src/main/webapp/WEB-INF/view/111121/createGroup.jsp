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
	<%@include file="group_head.jsp"%>    
    <section id="main-center-container">
        <div class="container">
            <div class="top-manu-tab-button-container">
                <span class="custom_menu-button tab-active left" id="tab_create_gup">CREATE GROUP</span>
                <span class="custom_menu-button left" id="tab_find_gup">FIND GROUP</span>
            </div>
            <div id="create-gup-container">
            <div class="custom-heading">Expand and Enhance your Learning Experience</div>
            <div><p>The Groupsù feature on our <a href="#">RTLN</a> platform boosts your learning ability. The focus of Groups is to allow you the flexibility to create the type of group that suits your needs.Whether you're a student that wants to set up a study group with some close friends, an expert who wants to share study resources or you want to achieve great results on a group project, Groups are the way to go.</p></div>
            
             <div class="create-frnd-grup-row-container">
                <div class="center-div center-div-margin200">
                     <div class="os-grid-img os-grid">
                        <img class="img-150x150" src="${cdnStatic}/images/no_img.png" width="150px" height="150">
                        <div class="input_text_box_panel"> 
							<div class="button_container upload_button">
								<a class="custom_button_blank upload-photo"  style="float:right;">UPLOAD PHOTO</a>
								 <input type="file" class="upload">
							 </div>
						</div>
                    </div>
                    <div class="os-grid os-grid-content">
                        <div class="custom-heading-inner"><span>BASIC GROUP INFO</span></div>
                        <div>
                           <div class="input_text_box_panel">
                               <div class="title_inputbox">GROUP NAME<sup><span class="required">*</span></sup></div>
                                <div class="oe-input-box-container-long">
                                    <input class="oe-input-box-long" placeholder="GROUP NAME" id="productTitle" data-tooltip=""/>
                                </div>
                                <span class="eg_line"></span>
                            </div>
                            <div class="input_text_box_panel">
                                <div class="title_inputbox">ABOUT GROUP<sup><span class="required">*</span></sup></div>    
                                <div class="oe-textarea-container">
                                    <textarea class="oe-textarea" placeholder="ABOUT GROUP" id="rejDescription"></textarea>
                                </div>
                                <div class="input_box_bottom"><span class="eg_line"></span></div>
                            </div>
                            <div class="custom-heading-inner"><span>GROUP TYPE & VISIBILITY INFO</span></div>
                             <div class="select-container left">
                                <div class="title_inputbox">GROUP TYPE<sup><span class="required">*</span></sup></div>
                                   <div class="oes-selectBox"  id="seller-selectBox-GTVI" data-tracker-selectBob="GTVI" style="margin-top: 9px;">
                                        <div class="oes-selectBox-parent">
                                            <div class="oes-selectBox-parent-heading" id="seller-selectBox-GTVI-heading">SELECT GROUP TYPE</div>
                                            <span class="oes-selectBox-close-img" id="seller-selectBox-GTVI-img">&nbsp;</span>
                                        </div>	
                                        <div class="oes-selectBox-child" id="seller-selectBox-GTVI-child">
                                            <ul id="GTVI" data-multiple-select="false" data-select-type="GROUP TYPE">
                                                <li id="GTVI-0" class="oes-none-selection">No Selection</li>
                                                <li id="GTVI-1" class="oes-seller-child">Friends Group</li>
                                                <li id="GTVI-2" class="oes-seller-child">Open Group</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <span class="eg_line"></span>
                            </div>
                             <div class="select-container left">
                                <div class="title_inputbox">GROUP VISIBILITY<sup><span class="required">*</span></sup></div>
                                   <div class="oes-selectBox"  id="seller-selectBox-GV" data-tracker-selectBob="GV" style="margin-top: 9px;">
                                        <div class="oes-selectBox-parent">
                                            <div class="oes-selectBox-parent-heading" id="seller-selectBox-GV-heading">SELECT VISIBILITY</div>
                                            <span class="oes-selectBox-close-img" id="seller-selectBox-GV-img">&nbsp;</span>
                                        </div>	
                                        <div class="oes-selectBox-child" id="seller-selectBox-GV-child">
                                            <ul id="GV" data-multiple-select="false" data-select-type="GROUP VISIBILITY">
                                                <li id="GV-0" class="oes-none-selection">No Selection</li>
                                                <li id="GV-1" class="oes-seller-child">Member</li>
                                                <li id="GV-2" class="oes-seller-child">Everyone</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <span class="eg_line"></span>
                            </div>
                            <div>
                              <div class="input_text_box_panel">
                                 <a class="custom_button_blank right cancel">CANCEL</a>
                                 <a class="custom_button_blank right create-group margin-right">CREATE GROUP</a>
                              </div>
                            </div> 
                        </div>
                    </div>
                 </div>
                </div><!--/.create-frnd-grup-row-container--> 
            </div><!--/create-gup-container--> 
            <div id="find-gup-container">
                <div class="custom-heading">Find your people to learn something, share something</span></div>
                <div class="note"><p>Group owner may review your request to join or ask for additional information to make sure you meet their membership criteria. Membership approval is solely up to the group owner.</p></div>
            <div class="find-group-filter-container">
                <table>
                    <tr>
                        <td class="no-padding-left">
                            <div class="input_text_box_panel">
                                <div class="title_inputbox">GROUP UID<sup><span class="required">*</span></sup></div>
                                <div class="oe-input-box-container">
                                <input class="oe-input-box" placeholder="Group Unique Id" id="fnd_grp_uid"/>
                                </div>
                            </div>
                        </td>
                        
                        <td>
                            <div class="input_text_box_panel">
                                <div class="title_inputbox">GROUP NAME<sup><span class="required">*</span></sup></div>
                                <div class="oe-input-box-container">
                                <input class="oe-input-box" placeholder="Group Name" id="fnd_grp_name"/>
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
                                    <div class="oes-selectBox-parent-heading" id="seller-selectBox-GT-heading">SELECT GROUP TYPE</div>
                                    <span class="oes-selectBox-close-img" id="seller-selectBox-GT-img">&nbsp;</span>
                                </div>	
                                <div class="oes-selectBox-child" id="seller-selectBox-GT-child">
                                    <ul id="GT" data-multiple-select="false" data-select-type="GROUP TYPE">
                                        <li id="GT-0" class="oes-none-selection">No Selection</li>
										<li id="GT-1" class="oes-seller-child">Friends Group</li>
										<li id="GT-2" class="oes-seller-child">Open Group</li>
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
                                    <img class="img-logo" src="${cdnStatic}/images/no_img.png" width="115" height="104" />
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
                                    <img class="img-logo" src="${cdnStatic}/images/no_img.png" width="115" height="104" />
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
                                    <img class="img-logo" src="${cdnStatic}/images/no_img.png" width="115" height="104" />
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
                                    <img class="img-logo" src="${cdnStatic}/images/no_img.png" width="115" height="104" />
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
                            <img src="images/man4.jpg" class="img-logo-100X100">
                            
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
            </div>
        </div><!--/.container-->    
    </section><!--/#conatcat-info-->
	  <%@include file="/resources/static/footer.jsp" %>
	<%@include file="/resources/static/javascript.jsp" %>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#tab_find_gup").on('click', function (){
               var $this=$(this);
                if(!$this.hasClass('tab-active')){
                    $("#find-gup-container").show();
                    $("#create-gup-container").hide();
                    $this.addClass("tab-active");
                    $("#tab_create_gup").removeClass("tab-active");
                }
            });
            $("#tab_create_gup").on('click', function (){
               var $this=$(this);
                if(!$this.hasClass('tab-active')){
                    $("#create-gup-container").show();
                    $("#find-gup-container").hide();
                    $this.addClass("tab-active");
                    $("#tab_find_gup").removeClass("tab-active");
                }
            });
        });
    </script>
</body>
</html>
