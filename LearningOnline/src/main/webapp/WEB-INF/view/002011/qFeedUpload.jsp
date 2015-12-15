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
    <%@include file="expert_head.jsp"%>
		<section class="container">
		    <div id="overlay-upload-container" >
		         <div class="uploadScreenContainer">
		                <div class="qa-give-ans-ans-container upload-qfeed-container">
		                    <div class="custom-heading"><span>UPLOAD NEW QFEED</span></div>
		                    <div class="qfeed-new-upload-container">
		                        <div class="input_text_box_panel">
		                            <div class="title_inputbox">QFEED TITLE<sup><span class="required">*</span></sup></div>
		                            <div class="oe-input-box-container-long">
		                                <input class="oe-input-box-long" placeholder="Full Name" id="reg_fullName"/>
		                            </div>
		                            <div class="input_box_bottom"><span class="eg_line"></span></div>
		                        </div>
		                          <div>
		                            <div class="gender_left">
		                                 <div class="input_text_box_panel">
		                                    <div class="title_inputbox">NO. OF QUESTIONS<sup><span class="required">*</span></sup></div>
		                                    <div class="oe-input-box-container">
		                                        <input class="oe-input-box" placeholder="No. of Question"/>
		                                    </div>
		                                    <span class="eg_line"></span>
		                                </div>
		                            </div>
		                            <div class="dob_right">
		                                <div class="title_inputbox"><sup><span class="required"></span></sup></div>
		                                <div class="btn-select-category" id="btn-select-category"></div>
		                            </div> 
		                        </div>
		                        <div class="upload-selected-file-name"></div>
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
		    <div class="qfeed-uploaded-list-TB" id="qfeed-list">
		        <div class="custom-heading"><span>UPLOADED QFEED LIST</span></div>
		         <div class="test-list-table-container table-responsive format-table-list">
		            <table cellpadding="10px;" border="1" id="test_list">
						<thead>
							<tr>
								<th>QFEED ID</th>
		                        <th>QFEED TITLE</th>
		                        <th>TOPIC</th>
		                        <th>NOQ</th>
		                        <th>DATE</th>
		                        <th>STATUS</th>
		                        <th style="width:90px;">ACTION</th>
							</tr>
		
						</thead>
						<tbody>
							<tr class="odd">
								<td><a href="#">#125485</a></td>
		                        <td>CA-CPT-Accounting_25/02/2015</td>
		                        <td><a href="#" class="subj_2_cat">Programing</a></td>
		                        <td>15</td>
		                        <td>25 Feb, 2015</td>
		                        <td>IN PROCCESS</td>
		                        <td><a href="#" class="dowload-qfeed" title="DOWNLOAD QFEED"></a> <a href="#" class="detail-test" id="td-1" data-panel="close"></a></td>
							</tr>
							<tr>
								<td><a href="#">#125485</a></td>
		                        <td>CA-CPT-Accounting_25/02/2015</td>
		                        <td><a href="#" class="subj_2_cat">Programing</a></td>
		                        <td>15</td>
		                        <td>25 Feb, 2015</td>
		                        <td>IN PROCCESS</td>
		                        <td><a href="#" class="dowload-qfeed" title="DOWNLOAD QFEED"></a> <a href="#" class="detail-test" id="td-2" data-panel="close"></a></td>
							</tr>
							<tr class="odd">
								<td><a href="#">#125485</a></td>
		                        <td>CA-CPT-Accounting_25/02/2015</td>
		                        <td><a href="#" class="subj_2_cat">Programing</a></td>
		                        <td>15</td>
		                        <td>25 Feb, 2015</td>
		                        <td>IN PROCCESS</td>
		                        <td><a href="#" class="dowload-qfeed" title="DOWNLOAD QFEED"></a> <a href="#" class="detail-test" id="td-3" data-panel="close"></a></td>
							</tr>
							<tr>
								<td><a href="#">#125485</a></td>
		                        <td>CA-CPT-Accounting_25/02/2015</td>
		                        <td><a href="#" class="subj_2_cat">Programing</a></td>
		                        <td>15</td>
		                        <td>25 Feb, 2015</td>
		                        <td>IN PROCCESS</td>
		                        <td><a href="#" class="dowload-qfeed" title="DOWNLOAD QFEED"></a> <a href="#" class="detail-test" id="td-4" data-panel="close"></a></td>
							</tr>
							<tr class="odd">
								<td><a href="#">#125485</a></td>
		                        <td>CA-CPT-Accounting_25/02/2015</td>
		                        <td><a href="#" class="subj_2_cat">Programing</a></td>
		                        <td>15</td>
		                        <td>25 Feb, 2015</td>
		                        <td>IN PROCCESS</td>
		                        <td><a href="#" class="dowload-qfeed" title="DOWNLOAD QFEED"></a> <a href="#" class="detail-test" id="td-5" data-panel="close"></a></td>
							</tr>
						</tbody>
					</table>
		        </div>
		    </div>
		    <div>
				<a class="custom_button_blank upload" id="btn-upload-qfeed" style="float:right;">UPLOAD QFEED</a>
		        
		    </div>
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
		                <div class="input_text_box_panel"> 
								<a class="custom_button_blank cancel right" id="cancel-category">CANCEL</a>
		                        <a class="custom_button_blank reset right">RESET</a>
		                        <a class="custom_button_blank continue right">PROCCED</a>
		                    </div>
		            </div>
		        </div>
		    </div>
			<div class="cat-hover-detail" id="cat-hover-detail"><span class="arrow-up"></span>CA > CPT > CPT-Group-1 > Final > Industrial Accounting</div>
		</section>
        <%@include file="/resources/static/footer.jsp" %>
		<%@include file="/resources/static/javascript.jsp" %>
    	<script type="text/javascript">
			$(document).ready(function () {
			    $("#btn-upload-qfeed").on("click",function (){
			        $("#overlay-upload-container").fadeIn(500);
			    });
			    
			    $("a#cancel-upload").on("click", function (){
			        $("#overlay-upload-container").fadeOut(200);
			    });   
			    $('.toggle-nav').click(function(e) {
			        $(this).toggleClass('active');
			        $('.menu ul').toggleClass('active');
			        e.preventDefault();
			    });
			});
		</script>
</body>
</html>