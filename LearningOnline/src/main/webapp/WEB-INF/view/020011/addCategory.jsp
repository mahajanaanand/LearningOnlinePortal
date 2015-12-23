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
                       <div class="title_inputbox">CHAPTER<sup><span class="required">*</span></sup></div>
                       <div class="oes-selectBox"  id="seller-selectBox-CHAPTER" data-tracker-selectBob="CHAPTER" style="margin-top: 9px;">
                            <div class="oes-selectBox-parent">
                                <div class="oes-selectBox-parent-heading" id="seller-selectBox-CHAPTER-heading">SELECT CHAPTER</div>
                                <span class="oes-selectBox-close-img" id="seller-selectBox-CHAPTER-img">&nbsp;</span>
                            </div>	
                            <div class="oes-selectBox-child" id="seller-selectBox-CHAPTER-child">
                                <ul id="CHAPTER" data-multiple-select="false" data-select-type="CHAPTER">
                                    <li id="CHAPTER-0" class="oes-none-selection filterOption">No Selection</li>
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
                        	<a class="custom_button_blank left update-item" id="update_text_value">UPDATE ITEM</a>	
                        </div>
						
                    </div>
                </div>
                <div id="messageContainer"></div>
                <div class="categary-middle-container">
                     <div class="table-responsive format-table-list">
                        <table cellpadding="10px;" border="1" id="category_list">
                            <thead>
                                <tr>
                                    <th style="width:55px">#</th>
                                    <th>CATEGORY PATH</th>
                                    <th  style="width:110px; text-align: center;">ACTION</th>
                                </tr>
                            </thead>
                            <tbody></tbody>
                        </table>
                    </div>
                </div>
            </div><!--/.row-->
        </div><!--/.container-->    
    </section><!--/#conatcat-info-->
    <%@include file="/resources/static/footer.jsp" %>  
	<%@include file="/resources/static/javascript.jsp" %>
	<input type="hidden" id="operationId"/>
	<input type="hidden" value="${applicationRoot}" id="appRoot"/>
	<form:form id="courseForm" modelAttribute="formCategory" method="GET">
		<form:hidden id="courseForm_add_categoryText" path="courseCategory.courseTitle"></form:hidden>
	</form:form>
	
	<form:form id="subjectForm" modelAttribute="formCategory" method="GET">
		<form:hidden id="COURSE_li" path="subjectCategory.courseCategory.courseId"></form:hidden>
		<form:hidden id="subjectForm_add_categoryText" path="subjectCategory.subjectTitle"></form:hidden>
	</form:form>
	
	<form:form id="chapterForm" modelAttribute="formCategory" method="GET">
		<form:hidden id="SUBJECT_li" path="chapterCategory.subjectCategory.subjectId"></form:hidden>
		<form:hidden id="chapterForm_add_categoryText" path="chapterCategory.chapterTitle"></form:hidden>
	</form:form>
	
	<form:form id="topicForm" modelAttribute="formCategory" method="GET">
		<form:hidden id="CHAPTER_li" path="topicCategory.chapterCategory.chapterId"></form:hidden>
		<form:hidden id="topicForm_add_categoryText" path="topicCategory.topicTitle"></form:hidden>
	</form:form>
	
	
	 <script type="text/javascript">	
	 var appRoot=$("#appRoot").val()+'/111111/';
	 $("#add_text_value").on('click', function(){
		 executePersist(); 		 
	 });
	 function executePersist(){
		
		 var course_li=$("#COURSE_li").val();
		 var subject_li=$("#SUBJECT_li").val();
		 var chapter_li=$("#CHAPTER_li").val();

		 if(course_li!=0 && subject_li==0 && chapter_li==0) {
			  $("#subjectForm_add_categoryText").val($("#categoryText").val());
			 var requestData=$("#subjectForm").serialize();
			 persistCategory('categoryText?action=2','GET',requestData,"SUBJECT",course_li,2);	 
		 } else if(course_li!=0 && subject_li!=0 && chapter_li==0){
			 $("#chapterForm_add_categoryText").val($("#categoryText").val());
			 var requestData=$('#chapterForm').serialize();
			 persistCategory('categoryText?action=3', 'GET', requestData,'CHAPTER',subject_li,3);
		 } else if(course_li!=0 && subject_li!=0 && chapter_li!=0){
			 $("#topicForm_add_categoryText").val($("#categoryText").val());
			 var requestData=$("#topicForm").serialize(); 
			 var requestedData=course_li+","+subject_li+","+chapter_li;
			 persistCategory('categoryText?action=4&requestedData='+requestedData,'GET',requestData,'TOPIC',chapter_li,4);  
			
		 } else{
			 $("#courseForm_add_categoryText").val($("#categoryText").val());
			 var requestData=$("#courseForm").serialize();
			 persistCategory('categoryText?action=1','GET',requestData,'COURSE',0,1);
		 }
	}	 
	
	function persistCategory(urlSuffix,methodType,requestData,elementId,whereId,key){
		$.ajax({
 			url:urlSuffix,type:methodType,dataType:'json',data:requestData,
 			success:function(response){
 				if(response.status=="SUCCESS"){
 					if(response.responseId!=0){
 						$("#messageContainer").append("<div id=errorMSG>"+response.message+"</div>");
 						var tr='<tr><td>0</td><td>'+$("#COURSE").text()+" > "+$("#SUBJECT").text()+" > "+$("#CHAPTER").text()+" > <span class=main-topic>"+$("#categoryText").val()+'</span></td><td style=text-align:center><a class=edit_row data-edit='+response.responseId+'>&nbsp;</a><a class=delete_row data-trash='+response.responseId+'></td></tr>';
 						$("#category_list tbody").append(tr);
 					}
 					if(key==1){
 							$("#messageContainer").append("<div id=errorMSG>"+response.message+"</div>");
 	 						requestListById(appRoot+'requestAllCategory',"GET",'',$("ul#"+elementId),0,elementId,1);	
 	 				}else{
 	 						$("#messageContainer").append("<div id=errorMSG>"+response.message+"</div>");
 	 						requestListById(appRoot+'requestAllCategory',"GET",'',$("ul#"+elementId),whereId,elementId,key);			
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
	  $(document).ready(function() {
		  requestListById(appRoot+'requestAllCategory',"GET",'',$("ul#COURSE"),0,'COURSE',1);
		  requestListById('categoryClass',"GET",'',$("#category_list tbody"),0,'',5);
	 });
	 function requestListById(urlSuffix,methodType,requestData,elementId,whereId,li_Id,key)
	 {	
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
	 
	 $(document.body).on('click',"li.operationEvent",function (){
		 var $this=$(this);
		 var closestId=$this.closest("ul").attr("id");
		 var elementId=$this.attr("data-keyID");
		 switch (closestId) {	
		 case 'COURSE':{
				requestListById(appRoot+'requestAllCategory',"GET",'',$("ul#SUBJECT"),elementId,'SUBJECT',2);
				nonSelection(1);
				break;
			 }
		 case 'SUBJECT':{
				requestListById(appRoot+'requestAllCategory',"GET",'',$("ul#CHAPTER"),elementId,'CHAPTER',3);
				nonSelection(2);
				break;
			}
		 case 'CHAPTER':{
			 	requestListById(appRoot+'requestAllCategory',"GET",'',$("ul#TOPIC"),elementId,'TOPIC',4);
			 	nonSelection(3);
				break;
		 } 
		 		  
			default:
				break;
			}	 
	 });
	 function responseJSONRender(jsonResult,elementId,li_Id){
		 elementId.empty();	
		 var items=[];
		 items.push('<li id="'+li_Id+'-0" class="oes-none-selection">No Selection</li>');
			for(var i=0; i<jsonResult.length; i++){
				var data=jsonResult[i];

				items.push('<li data-keyID='+data.responseId+' id='+li_Id+'-'+data.responseId+' class="oes-seller-child operationEvent">'+data.responseTitle+'</li>');
			}
			elementId.append(items.join(''));
	 }
	 
	 function responseDTOJSONRender(jsonResult,elementId){
		// elementId.empty();	
		 var items=[];
			for(var i=0; i<jsonResult.length; i++){
				var data=jsonResult[i];
				items.push('<tr><td>'+data.categoryClassId+'</td><td>'+data.courseTitle+' > '+data.subjectTitle+' > '+data.chapterTitle+' > <span class="main-topic">'+data.topicTitle+'</span></td><td style=text-align:center><a class=edit_row data-edit='+data.categoryClassId+' Title=EDIT>&nbsp;</a><a class=delete_row data-trash='+data.categoryClassId+' Title=DELETE></td></tr>');
			}
			elementId.append(items.join(''));
	 }
	 
	 function nonSelection(updateId)
	 {
		 switch (updateId) {
			case 1:{
				$("ul#SUBJECT").empty();
				$("ul#CHAPTER").empty();
				$("ul#TOPIC").empty();
				$("#SUBJECT_li").val(0);
				$("#CHAPTER_li").val(0);
				$("#TOPIC_li").val(0);
				$("#seller-selectBox-SUBJECT-heading").text("SELECT SUBJECT");
				$("#seller-selectBox-CHAPTER-heading").text("SELECT CHAPTER");
				$("#seller-selectBox-TOPIC-heading").text("SELECT TOPIC");
				break;
			}
			case 2:{
				$("ul#CHAPTER").empty();
				$("ul#TOPIC").empty();
				$("#CHAPTER_li").val(0);
				$("#TOPIC_li").val(0);
				$("#seller-selectBox-CHAPTER-heading").text("SELECT CHAPTER");
				$("#seller-selectBox-TOPIC-heading").text("SELECT TOPIC");
				break;
			}
			case 3:{
				$("ul#TOPIC").empty();
				$("#TOPIC_li").val(0);
				$("#seller-selectBox-TOPIC-heading").text("SELECT TOPIC");
				break;
			}
			
			

		default:
			break;
		}
	 	
	 }
	 $("#categoryText").on('click', function(){
		 $("#messageContainer").empty(); 
	 });
	</script>
</body>
</html>