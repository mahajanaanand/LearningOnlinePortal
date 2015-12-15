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
  	<%@include file="qa_head.jsp"%>    
		<section class="container">
		    <div class="qa-give-ans-container">
		        <div class="qa-give-ans-left">
		            <div class="qa-give-ans-title">Why android game is not working?</div>
		                <div class="qa-give-ans-que-container">
		                    <div class="qa-give-ans-detail">
		                        <p>I have been working on android apps for a long time but now I have decided to create a game aside with my pre-calculus final. I have completed the whole code and it works perfectly except one tiny issue. First of the game is based on flying pig(my classmate's face) avoiding top and bottom osticle. I developed an algorithm so that the obsticles are evenly spaced and based on random selection placed either as the top or bottom of the screen but never both at the same time!. The algorithm that needs improvement is in the 3rd code segment!</p>
								<div class="qa-give-ans-comment-detail" >
									<ul>
										<li><a href="#NEW-14521" class="add-comment" data-parent-id="14521" title="ADD COMMENT" data-comment-type=0></a></li>	
										<li><a href="#"  class="post-answer" title="POST ANSWER"></a></li>
										<li class="by"><a href="">Aadesh Mahajan</a></li>
										<li class="on">31 July, 2015</li>
										<li class="nov">1452</li>
									</ul>  
								</div>
		                    </div>
		                    <div class="qa-comment-container" id="14521">
							<div class="qa-comment-row-container" id="VEW-14521">
								<div class="qa-comment-row">
									<p class="que_comment" id="COMM-125478">I have been working on android apps for a long time but now I have decided to create a game aside with my pre- rst of the game is based on flying pig(my classmate's face) avoiding top and bottom osticle.<a href="#RLY-125478" class="add-comment" data-comment-id="125478" title="ADD COMMENT" data-comment-type=1></a></p>
									<ul>
										<li class="commented"><a href="" >Aadesh Mahajan</a></li>
										<li class="on">31 July, 2015</li>
									</ul>
								</div>
								<div class="qa-comment-row">
									<p class="que_comment" id="COMM-1254752">I have been working on android apps for a long time but now I have decided to create a game aside with my pre- rst of the game is based on flying pig(my classmate's face) avoiding top and bottom osticle.<a href="#RLY-1254752" class="add-comment" data-comment-id="1254752" title="ADD COMMENT" data-comment-type=1></a></p>
									<ul>
										<li class="commented"><a href="">Aadesh Mahajan</a></li>
										<li class="on">31 July, 2015</li>
									</ul>
								</div>
								<div class="show_more_comment_con"><a href="#" class="show_more_comment" data-more-comment-id="14521"></a></div>
							</div>
						</div>
		                </div>
		            <div class="qa-give-ans-ans-container">
		                <div class="custom-heading"><span>ANSWER</span></div>
		                 <div class="qa-give-ans-detail">
		                        <p>This is an old one but still valid question. Even field "currentLocation" is listed as valid reponse People object field (https://developers.google.com/+/api/latest/people), there´s no way to access field´s data.</p>
		                    <div class="qa-give-ans-comment-detail">
		                        <ul>
								<li><a href="#NEW-14521" class="add-comment" data-parent-id="14521" title="ADD COMMENT" data-comment-type=0></a></li>	
								<li><a href="#"  class="post-answer" title="POST ANSWER"></a></li>
								<li class="by"><a href="">Aadesh Mahajan</a></li>
								<li class="on">31 July, 2015</li>
								</ul> 
		                    </div>
		
		                    </div>
		                    <div class="qa-give-ans-que-comment">
		                        <p>I have explored this 'solution' above and find it virtually useless. The only thing that could possibly provide location is the 'moment' api and it is confirmed broken by Google, it says they will be fixing it but, of course, there is not expected date.</p>
		                        <div class="qa-give-ans-comment-detail">
		                            <ul>
		                               <li class="comment"><a href="">Aadesh Mahajan</a></li>
		                                <li class="on">31 July, 2015</li>
		                            </ul>    
		                        </div>
		                    </div>
							<div class="show_more_comment_con"><a href="#" class="show_more_comment" data-more-comment-id="14521"></a></div>
		            </div>
		            <div class="qa-give-ans-ans-text-boxcontainer">
		                 <div class="custom-heading"><span>WRITE ANSWER</span></div>
		                 <div class="qa-give-ans-textarea-container margin2040">
		                    <div class="input_text_box_panel">
		                       <div class="oe-textarea-container-HW-long">
		                           <textarea class="oe-textarea-HW-long" placeholder="Write Answer" id="reg_address"></textarea>
		                       </div>
		                       <div class="input_box_bottom"><span class="eg_line"></span></div>
		                    </div>
		                </div> 
		                  <div class="input_text_box_panel"> 
							 <a class="custom_button_blank post-que right">POST ANSWER</a> 
		                    <div class="button_container upload_button right">
		                        <a class="custom_button_blank upload right margin-right">UPLOAD IMAGE</a>
		                         <input type="file" class="upload">
		                     </div>
		                     	
		                </div>
		            </div>
		        </div>  
		    </div>
		    <div class="qa-give-ans-guidline margin-top0">
		        <div class="qa-give-ans-title no-border border-bottom">ANSWER GUIDLINE</div>
		    </div>
		</section>
		<%@include file="/resources/static/footer.jsp" %>
<%@include file="/resources/static/javascript.jsp" %>
</body>
</html>