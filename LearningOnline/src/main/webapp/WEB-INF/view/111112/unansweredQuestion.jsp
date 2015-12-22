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
	<%@include file="../111112/qa_head.jsp"%>  
	<section class="container">
	    <div class="qa-give-ans-container" id="qa-give-ans-container">
			<div class="info_heading_close right" id="category_filter">CATEGORY FILTER</div>
			<div class="find-group-filter-container info_heading_detail clear-both" id="category_filter_detail"> 
	                <table>
	                    <tr>
	                        <td>
	                             <div class="title_inputbox">COURSE<sup><span class="required"></span></sup></div>
	                           <div class="oes-selectBox"  id="seller-selectBox-SC" data-tracker-selectBob="SC">
	                            <div class="oes-selectBox-parent">
	                                    <div class="oes-selectBox-parent-heading" id="seller-selectBox-SC-heading">SELECT COURSE</div>
	                                    <span class="oes-selectBox-close-img" id="seller-selectBox-SC-img">&nbsp;</span>
	                                </div>	
	                                <div class="oes-selectBox-child" id="seller-selectBox-SC-child">
	                                    <ul id="SC" data-multiple-select="false" data-select-type="COURSE">
	                                        <li id="SC-0" class="oes-none-selection filterOption">No Selection</li>
	                                    </ul>
	                                </div>
	                            </div>
	                        </td>
							<td>
	                             <div class="title_inputbox">SUBJECT<sup><span class="required"></span></sup></div>
	                           <div class="oes-selectBox"  id="seller-selectBox-S" data-tracker-selectBob="S">
	                            <div class="oes-selectBox-parent">
	                                    <div class="oes-selectBox-parent-heading" id="seller-selectBox-S-heading">SELECT SUBJECT</div>
	                                    <span class="oes-selectBox-close-img" id="seller-selectBox-S-img">&nbsp;</span>
	                                </div>	
	                                <div class="oes-selectBox-child" id="seller-selectBox-S-child">
	                                    <ul id="GC" data-multiple-select="false" data-select-type="SUBJECT">
	                                        <li id="S-0" class="oes-none-selection filterOption">No Selection</li>
	                                    </ul>
	                                </div>
	                            </div>
	                        </td>
	                       
	                         <td>
	                             <div class="title_inputbox">CHAPTER<sup><span class="required"></span></sup></div>
	                           <div class="oes-selectBox"  id="seller-selectBox-CH" data-tracker-selectBob="CH">
	                            <div class="oes-selectBox-parent">
	                                    <div class="oes-selectBox-parent-heading" id="seller-selectBox-CH-heading">SELECT CHAPTER</div>
	                                    <span class="oes-selectBox-close-img" id="seller-selectBox-CH-img">&nbsp;</span>
	                                </div>	
	                                <div class="oes-selectBox-child" id="seller-selectBox-CH-child">
	                                    <ul id="CH" data-multiple-select="false" data-select-type="CHAPTER">
	                                        <li id="CH-0" class="oes-none-selection filterOption">No Selection</li>
	                                    </ul>
	                                </div>
	                            </div>
	                        </td>
	                        
	                        <td class="no-border-right">
	                            <div class="title_inputbox">TOPIC<sup><span class="required"></span></sup></div>
	                           <div class="oes-selectBox"  id="seller-selectBox-T" data-tracker-selectBob="T">
	                            <div class="oes-selectBox-parent">
	                                    <div class="oes-selectBox-parent-heading" id="seller-selectBox-T-heading">SELECT TOPIC</div>
	                                    <span class="oes-selectBox-close-img" id="seller-selectBox-T-img">&nbsp;</span>
	                                </div>	
	                                <div class="oes-selectBox-child" id="seller-selectBox-T-child">
	                                    <ul id="T" data-multiple-select="false" data-select-type="TOPIC">
	                                        <li id="T-0" class="oes-none-selection filterOption">No Selection</li>
	                                    </ul>
	                                </div>
	                            </div>
	                        </td>
	                    </tr>
						<tr>
							<td style="padding-top:20px;" rowspan="2">
	                           <div class="input_text_box_panel">
	                                <div class="title_inputbox">KEYWORD<sup><span class="required"></span></sup></div>
	                                <div class="oe-input-box-container">
	                                	<input class="oe-input-box" placeholder="Enter Keyword" id="keyword" autocomplete="off"/>
	                                </div>
								   <span class="eg_line">Use Comma for Multiple Keyword(s)</span>
	                            </div>
	                        </td>
							<td class="no-border-right" style="padding-top:22px;" rowspan="2">
	                             <div class="title_inputbox"><sup><span class="required"></span></sup></div>
	                             <div class="input_text_box_panel">
	                                 <a class="custom_button_blank find-group left">SEARCH</a>
	                            </div>
	                        </td>
						</tr>
	                </table>
	              </div>
			<div class="qa-unanswer-block clear-both">
	            <div class="qa-give-ans-title">Why android game is not working?</div>
				<div class="qa-give-ans-que-container">
					<div class="qa-give-ans-detail" data-track-id="14521">
						<p class="que_desc">I have been working on android apps for a long time but now I have decided to create a game aside with my pre-calculus final. I have completed the whole code and it works perfectly except one tiny issue. First of the game is based on flying pig(my classmate's face) avoiding top and bottom osticle. I developed an algorithm so that the obsticles are evenly spaced and based on random selection placed either as the top or bottom of the screen but never both at the same time!. The algorithm that needs improvement is in the 3rd code segment!</p>
					 <div class="qa-give-ans-comment-detail" >
						<ul>
							<li><a href="#NEW-14521" class="add-comment" data-parent-id="14521" title="ADD COMMENT" data-comment-type=0></a></li>	
							<li><a href="QA_Detalied_Que_Ans.html?dataParentId=14521"  class="post-answer" data-click-hint="1" title="POST ANSWER"></a></li>
							<li><a href="#" class="view-comment" title="VIEW COMMENT" data-view-comment-id="14521"></a></li>
							<li class="by"><a href="">Aadesh Mahajan</a></li>
							<li class="on">31 July, 2015</li>
							<li class="nov">1452</li>
							</ul>  
					 </div>
					<div class="qa-comment-container" id="14521">
						<div class="qa-comment-row-container no-display" id="VEW-14521">
							<div class="qa-comment-row">
								<p class="que_comment" id="COMM-125478">I have been working on android apps for a long time but now I have decided to create a game aside with my pre- rst of the game is based on flying pig(my classmate's face) avoiding top and bottom osticle.<a href="#RLY-125478" class="add-comment" data-comment-id="125478" title="ADD COMMENT" data-comment-type=1></a><a href="#" class="remove-comment" data-comment-remove-id="125478" title="REMOVE COMMENT"></a></p>
								<ul>
									<li class="commented"><a href="" >Aadesh Mahajan</a></li>
									<li class="on">31 July, 2015</li>
								</ul>
							</div>
							<div class="qa-comment-row">
								<p class="que_comment" id="COMM-1478">I have been working on android apps for a long time but now I have decided to create a game aside with my pre- rst of the game is based on flying pig(my classmate's face) avoiding top and bottom osticle.<a href="#RLY-1478" class="add-comment" data-comment-id="1478" title="ADD COMMENT" data-comment-type=1></a><a href="#" class="remove-comment" data-comment-remove-id="1478" title="REMOVE COMMENT"></a></p>
								<ul>
									<li class="commented"><a href="">Aadesh Mahajan</a></li>
									<li class="on">31 July, 2015</li>
								</ul>
							</div>
							<div class="show_more_comment_con"><a href="#" class="show_more_comment" data-more-comment-id="14521"></a></div>
						</div>
					</div>
				</div>
			</div>
	       </div> 
			
			 <div class="qa-unanswer-block">
	            <div class="qa-give-ans-title">Why android game is not working?</div>
				<div class="qa-give-ans-que-container">
					<div class="qa-give-ans-detail" data-track-id="14522">
	                        <p class="que_desc">I have been working on android apps for a long time but now I have decided to create a game aside with my pre-calculus final. I have completed the whole code and it works perfectly except one tiny issue. First of the game is based on flying pig(my classmate's face) avoiding top and bottom osticle. I developed an algorithm so that the obsticles are evenly spaced and based on random selection placed either as the top or bottom of the screen but never both at the same time!. The algorithm that needs improvement is in the 3rd code segment!</p>
	                     <div class="qa-give-ans-comment-detail" >
							<ul>
							<li><a href="#NEW-14522" class="add-comment" data-parent-id="14522" data-click-hint="3"  data-index="0" title="ADD COMMENT"></a></li>	
							<li><a href="QA_Detalied_Que_Ans.html?dataParentId=14522"  class="post-answer" data-click-hint="1" title="POST ANSWER"></a></li>
							<li><a href="#" class="view-comment" title="VIEW COMMENT" data-view-comment-id="14522"></a></li>
							<li class="by"><a href="">Aadesh Mahajan</a></li>
							<li class="on">31 July, 2015</li>
							<li class="nov">1452</li>
							</ul>   
						</div>
						<div class="qa-comment-container" id="14522">
							<div class="qa-comment-row-container" id="VEW-14522"></div>
						</div>	
	                    </div>
				</div>
	        </div>
	    </div>
	</section>
	<%@include file="/resources/static/footer.jsp" %>
	<%@include file="/resources/static/javascript.jsp" %>
</body>
</html>