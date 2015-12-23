<%@page import="fss.webportal.lo.classes.ApplicationUtility"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="/resources/static/taglib.jsp" %>
 <c:set var="rootApp" value="<%=ApplicationUtility.getRequestApplicationRoot()%>"/>
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
                            <ul id="COURSE"></ul>
                        </div>    
                    </div>
                    <div class="cat-col1-2">
                    <div class="col-heading">SUBJECT</div>    
                        <div class="col-list-container">
                            <ul id="SUBJECT"></ul>
                        </div>
                    </div>
                    <div class="cat-col1-3">
                        <div class="col-heading">CHAPTER</div>    
                        <div class="col-list-container">
                            <ul id="CHAPTER"></ul>
                        </div>
                    </div>
                    <div class="cat-col1-4">
                        <div class="col-heading">TOPIC</div>    
                        <div class="col-list-container">
                            <ul id="TOPIC"></ul>
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
    <input type="hidden" id="appRoot" value="${rootApp}">
    <!--SELECT CATEGORY CONTAINER END-->       
	  <%@include file="/resources/static/javascript.jsp" %>
	  <script type="text/javascript">
		 $( document ).ready(function() {
			 $("a#cancel-category-main").on('click',function (){
				 window.location.replace("redirectHome");
			 });
			 requestListById('requestAllCategory',"GET",$("ul#COURSE"),0,'COURSE',1);
		 });
		 
		 function requestListById(urlSuffix,methodType,elementId,whereId,li_Id,key){	
			 whereId="whereId="+whereId+"&key="+key;
			  $.ajax({
		 			url:urlSuffix,type:methodType,dataType:'json',data:whereId,
		 			success:function(response){
		 				if(response.status=="SUCCESS"){
		 					if(key==5){
		 						responseDTOJSONRender(response.result,elementId);
		 					}else{
		 						responseJSONRender(response.result,elementId,li_Id);
		 					}
		 				}
		 				else if(response.status=="ERROR"){
		 					alert(response.message);
		 				}
					},
		 			error:function(e){
		 			alert("error in process");
		 			}
		 		});
		 }
		 function responseJSONRender(jsonResult,elementId,li_Id){
			 elementId.empty();	
			 var items=[];
				for(var i=0; i<jsonResult.length; i++){
					var data=jsonResult[i];

					items.push('<li data-keyID='+data.responseId+' id='+li_Id+'-'+data.responseId+' class="operationEvent" data-event=0>'+data.responseTitle+'</li>');
				}
				elementId.append(items.join(''));
		 }
		 
		 function responseDTOJSONRender(jsonResult,elementId){
			// elementId.empty();	
			 var items=[];
				for(var i=0; i<jsonResult.length; i++){
					var data=jsonResult[i];
					items.push('<tr><td>'+data.categoryClassId+'</td><td>'+data.courseTitle+' > '+data.subjectTitle+' > '+data.chapterTitle+' > <span class="main-topic">'+data.topicTitle+'</span></td><td style=text-align:center><a class=edit_row data-edit='+data.categoryClassId+'>&nbsp;</a><a class=delete_row data-trash='+data.categoryClassId+'></td></tr>');
				}
				elementId.append(items.join(''));
		 }
		 $(document.body).on('click',"li.operationEvent",function (){
			 var $this=$(this);
			 var closestId=$this.closest("ul").attr("id");
			 var elementId=$this.attr("data-keyID");
			 switch (closestId) {	
			 case 'COURSE':{
					requestListById('requestAllCategory',"GET",$("ul#SUBJECT"),elementId,'SUBJECT',2);
					getCheckBox($(this));
					break;
				 }
			 case 'SUBJECT':{
					requestListById('requestAllCategory',"GET",$("ul#CHAPTER"),elementId,'CHAPTER',3);
					getCheckBox($(this));
					break;
				}
			 case 'CHAPTER':{
				 	requestListById('requestAllCategory',"GET",$("ul#TOPIC"),elementId,'TOPIC',4);
				 	getCheckBox($(this));
				 	break;
			 } 
			 case 'TOPIC':{
				 	getCheckBox($(this));
				 	break;
			 } 
				default:
					break;
				}	 
		 });
		 function getCheckBox($this){
			var data_event=$this.attr("data-event");
			if(data_event==0){
				$this.addClass("check");
				$this.attr("data-event",1);
			}else if(data_event==1){
				$this.removeClass("check");
				$this.attr("data-event",0);
			}
		 }
	</script>
</body>
</html>
