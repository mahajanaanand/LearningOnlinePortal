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
    <title>Learning Online Web Portal | Category</title>
     <link href="${cdnStatic}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${cdnStatic}/css/font-awesome.min.css" rel="stylesheet">
    <link href="${cdnStatic}/css/prettyPhoto.css" rel="stylesheet">
    <link href="${cdnStatic}/css/animate.min.css" rel="stylesheet">
    <link href="${cdnStatic}/css/main.css" rel="stylesheet">
    <link href="${cdnStatic}/css/responsive.css" rel="stylesheet">
    <body>
    <!--SELECT CATEGORY CONTAINER START-->
	<div id="overlay-category-container" style="display:block;">
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
				<a class="custom_button_blank cancel right" id="cancel-category-main">CANCEL</a>
               	<a class="custom_button_blank reset right margin-right">RESET</a>
				<a class="custom_button_blank continue right margin-right">PROCCED</a>
            </div>
        </div>
    </div>
    <!--SELECT CATEGORY CONTAINER END-->       
	  <%@include file="/resources/static/javascript.jsp" %>
	  <script type="text/javascript">
		 $( document ).ready(function() {
			 $("a#cancel-category-main").on('click',function (){
				 window.location.replace("redirectHome");
			 });
		 });
	</script>
</body>
</html>
