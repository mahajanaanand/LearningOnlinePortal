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
                <div class="tab-button-container"> 
                    
                 <span class="custom_menu-button  tab-active left" data-index="1">REVISION PANEL</span>
                 <span class="custom_menu-button left" data-index="2">DOWNLOAD PANEL</span>
                 <span class="custom_menu-button left" data-index="3">QFEED SUMMARY</span>
    </div>
    <div class="revision-panel-container" id="revision_panel_container" >
          <div class="custom-heading"><span>REVISION PANNEL</span></div>
          <div class="test-list-table-container table-responsive format-table-list">
                <table cellpadding="12px;" border="1" id="test_list">
					<thead>
						<tr>
							<th>QFEED ID</th>
							<th>QFEED TITLE</th>
							<th>SUBJECT</th>
							<th>SUBMITED BY</th>
							<th>TIME AGO</th>
							<th>STATUS</th>
							<th style="width:50px; text-align:center">ACTION</th>
						</tr>

					</thead>
					<tbody>
						<tr class="odd">
							<td><a href="#">#125485</a></td>
							<td>CA-CPT-Accounting_25/02/2015</td>
							<td><a href="#" class="subj_2_cat">Programing</a></td>
							<td>John Rushing</td>
							<td>10::68</td>
							<td class="pending">PENDING</td>
							<td><a href="#" class="dowload-qfeed" title="DOWNLOAD QFEED"></a></td>
						</tr>
						<tr class="odd">
							<td><a href="#">#125485</a></td>
							<td>CA-CPT-Accounting_25/02/2015</td>
							<td><a href="#" class="subj_2_cat">Programing</a></td>
							<td>John Rushing</td>
							<td>10::68</td>
							<td class="pending">PENDING</td>
							<td><a href="#" class="dowload-qfeed" title="DOWNLOAD QFEED"></a></td>
						</tr>
						<tr class="odd">
							<td><a href="#">#125485</a></td>
							<td>CA-CPT-Accounting_25/02/2015</td>
							<td><a href="#" class="subj_2_cat">Programing</a></td>
							<td>John Rushing</td>
							<td>10::68</td>
							<td class="pending">PENDING</td>
							<td><a href="#" class="dowload-qfeed" title="DOWNLOAD QFEED"></a></td>
						</tr>
						<tr class="odd">
							<td><a href="#">#125485</a></td>
							<td>CA-CPT-Accounting_25/02/2015</td>
							<td><a href="#" class="subj_2_cat">Programing</a></td>
							<td>John Rushing</td>
							<td>10::68</td>
							<td class="pending">PENDING</td>
							<td><a href="#" class="dowload-qfeed" title="DOWNLOAD QFEED"></a></td>
						</tr>
						<tr class="odd">
							<td><a href="#">#125485</a></td>
							<td>CA-CPT-Accounting_25/02/2015</td>
							<td><a href="#" class="subj_2_cat">Programing</a></td>
							<td>John Rushing</td>
							<td>10::68</td>
							<td class="pending">PENDING</td>
							<td><a href="#" class="dowload-qfeed" title="DOWNLOAD QFEED"></a></td>
						</tr>
                   </tbody>
                </table>
            </div>
		 
   </div>
   <div class="revision-panel-container" id="download_panel_container">
        <div class="custom-heading"><span>DOWNLOAD PANNEL</span></div>
        <div class="test-list-table-container table-responsive format-table-list">
             <table cellpadding="12px;" border="1" id="test_list">
					<thead>
						<tr>
							<th>QFEED ID</th>
							<th>QFEED TITLE</th>
							<th>SUBJECT</th>
							<th>SUBMITED BY</th>
							<th>TIME AGO</th>
							<th>STATUS</th>
							<th style="width:100px; text-align:center">ACTION</th>
						</tr>

					</thead>
					<tbody>
						<tr class="odd">
							<td><a href="#">#125485</a></td>
							<td>CA-CPT-Accounting_25/02/2015</td>
							<td><a href="#" class="subj_2_cat">Programing</a></td>
							<td>John Rushing</td>
							<td>10::68</td>
							<td class="process">DOWNLOADED</td>
							<td style="text-align:center"><a href="#" class="approved-qfeed" title="APPROVAL"></a> <a href="#" class="rejected-qfeed"  title="REJECTION"></a></td>
						</tr>
						<tr class="odd">
							<td><a href="#">#125485</a></td>
							<td>CA-CPT-Accounting_25/02/2015</td>
							<td><a href="#" class="subj_2_cat">Programing</a></td>
							<td>John Rushing</td>
							<td>10::68</td>
							<td class="process">DOWNLOADED</td>
							<td style="text-align:center"><a href="#" class="approved-qfeed" title="APPROVAL"></a> <a href="#" class="rejected-qfeed"  title="REJECTION"></a></td>
						</tr>
                   </tbody>
                </table>
        </div>
    </div> 
                
    <div class="revision-panel-container" id="qfeed_panel_container">
         <div class="custom-heading"><span>QFEED SUMMARY</span></div>
            <div class="test-list-table-container table-responsive format-table-list">
                <table cellpadding="12px;" border="1" id="test_list">
					<thead>
						<tr>
							<th>QFEED ID</th>
							<th>QFEED TITLE</th>
							<th>SUBJECT</th>
							<th>SUBMITED BY</th>
							<th>TIME AGO</th>
							<th>STATUS</th>
							<th style="width:50px; text-align:center">ACTION</th>
						</tr>

					</thead>
					<tbody>
						<tr class="odd">
							<td><a href="#">#125485</a></td>
							<td>CA-CPT-Accounting_25/02/2015</td>
							<td><a href="#" class="subj_2_cat">Programing</a></td>
							<td>John Rushing</td>
							<td>10::68</td>
							<td class="reject">REJECTED</td>
							<td><a href="#" class="dowload-qfeed" title="DOWNLOAD QFEED"></a></td>
						</tr>
						<tr>
							<td><a href="#">#125485</a></td>
							<td>CA-CPT-Accounting_25/02/2015</td>
							<td><a href="#" class="subj_2_cat">Programing</a></td>
							<td>John Rushing</td>
							<td>10::68</td>
							<td class="approve">APPROVED</td>
							<td><a href="#" class="dowload-qfeed" title="DOWNLOAD QFEED"></a></td>
						</tr>	
						<tr class="odd">
							<td><a href="#">#125485</a></td>
							<td>CA-CPT-Accounting_25/02/2015</td>
							<td><a href="#" class="subj_2_cat">Programing</a></td>
							<td>John Rushing</td>
							<td>10::68</td>
							<td class="process">DOWNLOADED</td>
							<td><a href="#" class="dowload-qfeed" title="DOWNLOAD QFEED"></a></td>
						</tr>
						<tr>
							<td><a href="#">#125485</a></td>
							<td>CA-CPT-Accounting_25/02/2015</td>
							<td><a href="#" class="subj_2_cat">Programing</a></td>
							<td>John Rushing</td>
							<td>10::68</td>
							<td class="process">DOWNLOADED</td>
							<td><a href="#" class="dowload-qfeed" title="DOWNLOAD QFEED"></a></td>
						</tr>
                   </tbody>
                </table>
            </div>
        </div><!--/.container-->  
			<div class="cat-hover-detail" id="cat-hover-detail"><span class="arrow-up"></span>CA > CPT > CPT-Group-1 > Final > Industrial Accounting</div>
    </section><!--/#conatcat-info-->
	        <%@include file="/resources/static/footer.jsp" %>
	<%@include file="/resources/static/javascript.jsp" %>
</body>
</html>
