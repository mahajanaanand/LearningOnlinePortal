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
		        <div class="custom-heading left"><span>RECENT TEST LIST </span></div>
		            <div class="test-list-container">
		                <div class="test-list-table-container table-responsive">
		                    <table cellpadding="10px;" border="1" id="test_list">
		                        <thead>
		                            <tr>
		                                <th>TEST ID</th>
		                                <th>SUBJECT</th>
		                                <th  style="width:120px;">VIEWS</th>
		                                <th  style="width:120px;">ATTEMPTED</th>
		                                <th>SCORER</th>
		                                <th>RATINGS</th>
		                                <th style="width:90px;">ACTION</th>
		                            </tr>
		
		                        </thead>
		                        <tbody>
		                            <tr class="odd">
		                                <td><a href="#">#125485</a></td>
		                                <td><a href="#" class="subj_2_cat">Programing</a></td>
		                                <td>102568</td>
		                                <td>125478</td>
		                                <td><a href="#" class="profile-hover">John Rushing</a></td>
		                                <td>145822</td>
		                                <td><a href="#" class="start-test" title="START TEST"></a> <a href="#" class="detail-test" id="td-1" data-panel="close"></a></td>
		                            </tr>
									<tr>
		                                <td><a href="#">#125485</a></td>
		                                <td><a href="#" class="subj_2_cat">Programing</a></td>
		                                <td>102568</td>
		                                <td>125478</td>
		                                <td><a href="#" class="profile-hover">John Rushing</a></td>
		                                <td>145822</td>
		                                <td><a href="#" class="start-test" title="START TEST"></a> <a href="#" class="detail-test"  id="td-2" data-panel="close"></a></td>
		                            </tr>
									<tr class="odd">
		                                <td><a href="#">#125485</a></td>
		                                <td><a href="#" class="subj_2_cat">Programing</a></td>
		                                <td>102568</td>
		                                <td>125478</td>
		                                <td><a href="#" class="profile-hover">John Rushing</a></td>
		                                <td>145822</td>
		                                <td><a href="#" class="start-test" title="START TEST"></a> <a href="#" class="detail-test"  id="td-3" data-panel="close"></a></td>
		                            </tr>
									<tr>
		                                <td><a href="#">#125485</a></td>
		                                <td><a href="#" class="subj_2_cat">Programing</a></td>
		                                <td>102568</td>
		                                <td>125478</td>
		                                <td><a href="#" class="profile-hover">John Rushing</a></td>
		                                <td>145822</td>
		                                <td><a href="#" class="start-test" title="START TEST"></a> <a href="#" class="detail-test"  id="td-4" data-panel="close"></a></td>
		                            </tr>
									<tr class="odd">
		                                <td><a href="#">#125485</a></td>
		                                <td><a href="#" class="subj_2_cat">Programing</a></td>
		                                <td>102568</td>
		                                <td>125478</td>
		                                <td><a href="#" class="profile-hover">John Rushing</a></td>
		                                <td>145822</td>
		                                <td><a href="#" class="start-test" title="START TEST"></a> <a href="#" class="detail-test"  id="td-5" data-panel="close"></a></td>
		                            </tr>
		                            <!--<tr>
		                                <td colspan="7">
		                                    <div class="test_detail_container">
		                                        <div class="test_detail_summary">
		                                            <div class="top">
		                                                <div class="top-left">
		                                                    <table border="0" cellpadding="10px">
		                                                        <tbody>
		                                                            <tr>
		                                                                <th>Test Title</th>
		                                                                <th>:</th>
		                                                                <td colspan="4">40 que tax and calculus basic</td>
		                                                            </tr>
		                                                            <tr>
		                                                                <th>Course Category</th>
		                                                                <th>:</th>
		                                                                <td colspan="4">40 que tax and calculus basic</td>
		                                                            </tr>
		                                                            <tr>
		                                                                <th>Subject</th>
		                                                                <th>:</th>
		                                                                <td>Private</td>
		                                                                <th>Test Category</th>
		                                                                <th>:</th>
		                                                                <td>Basic</td>
		                                                            </tr>
		                                                            <tr>
		                                                                <th>Test Level</th>
		                                                                <th>:</th>
		                                                                <td>30 Sec.</td>
		                                                                <th>Test Type</th>
		                                                                <th>:</th>
		                                                                <td>1258596</td>
		                                                            </tr>
		                                                            <tr>
		                                                                <th>Views</th>
		                                                                <th>:</th>
		                                                                <td>15258</td>
		                                                                <th>Attemped</th>
		                                                                <th>:</th>
		                                                                <td>1258596</td>
		                                                            </tr>
		                                                        </tbody> 
		                                                    </table>
		                                                </div>
		                                                <div class="top-right">
		                                                    <table border="0" cellpadding="10px">
		                                                        <tbody>
		                                                            <tr>
		                                                                <th>Created By</th>
		                                                                <th>:</th>
		                                                                <td>Aadesh Mahajan</td>
		                                                            </tr>
		                                                            <tr>
		                                                                <th>Created Date</th>
		                                                                <th>:</th>
		                                                                <td>15 July, 2015</td>
		                                                            </tr>
		                                                            <tr>
		                                                                <th>No. of Questions</th>
		                                                                <th>:</th>
		                                                                <td>15</td>
		                                                            </tr>
		                                                            <tr>
		                                                                <th>Desired Time E/Q</th>
		                                                                <th>:</th>
		                                                                <td>30 Sec.</td>
		                                                            </tr>
		                                                        </tbody> 
		                                                    </table>
		                                                </div>
		                                            </div>
		                                            <div class="top">
		                                                <div class="top-left"><p>Nature and general purpose of financial statements, Accounting principles, Owner's Equity, Basic accounting equation</p></div>
		                                                <div class="top-right"></div>
		                                            </div>
		                                        </div>
		                                        
		                                    </div>
		                                </td>
		                            </tr> -->
		                            
		                        </tbody>
		                    </table>
		                </div>
		                <div class="cat-hover-detail" id="cat-hover-detail"><span class="arrow-up"></span>CA > CPT > CPT-Group-1 > Final > Industrial Accounting</div>
		                <div class="profile-hover-detail" id="profile-hover-detail"><span class="arrow-up-profile"></span>
		                    <div class="hover-photo-100X100-container left">
		                        <div class="hover-photo-100X100">
		                            <img src="images/no_img.png" width="65" height="64" class="img-logo-100X100">
		                            
		                        </div>
		                        <div class="profile-hover-rank">#1254852</div>
		                    </div>
		                    <div class="hover-detail-container table-responsive left">
		                        <table>
		                            <tr>
		                                <th>NAME</th>
		                                <td>JOHN RUSHING</td>
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
		           <div>
						 <a class="custom_button_blank new-test" id="" style="float:right;">GENRATE NEW TEST</a>
					</div>
		</section>
	    <%@include file="/resources/static/footer.jsp" %>
		<%@include file="/resources/static/javascript.jsp" %>
</body>
</html>