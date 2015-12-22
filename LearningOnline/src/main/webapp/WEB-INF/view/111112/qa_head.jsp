 <!-- core CSS -->
    <%@page import="fss.webportal.lo.classes.ApplicationUtility"%>
<%@page import="fss.webportal.lo.classes.UserPrincipal"%>
<link href="${cdnStatic}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${cdnStatic}/css/font-awesome.min.css" rel="stylesheet">
    <link href="${cdnStatic}/css/prettyPhoto.css" rel="stylesheet">
    <link href="${cdnStatic}/css/animate.min.css" rel="stylesheet">
    <link href="${cdnStatic}/css/main.css" rel="stylesheet">
    <link href="${cdnStatic}/css/responsive.css" rel="stylesheet">
    
    <!--[if lt IE 9]>
    <script src="${cdnStatic}/js/html5shiv.js"></script>
    <script src="${cdnStatic}/js/respond.min.js"></script>
    <![endif]-->       
</head><!--/head-->

<body>

    <header id="header">
         <nav class="navbar navbar-inverse" role="banner">
            <div class="container">
				<div class="logo-container">
                	<a href=""><img src="${cdnStatic}/images/os_logo.png"></a>
                </div>
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    
                </div>
				
              <div class="collapse navbar-collapse navbar-right">
                   <%@ page isELIgnored ="false" %>
                   <c:set var="menuAction" value="<%=UserPrincipal.getMenuAction()%>"/>
                   <c:set var="rootApp" value="<%=ApplicationUtility.getRequestApplicationRoot()%>"/>
                   <c:set var="rootAction" value="${rootApp}/${menuAction}"/>
                     <ul class="nav navbar-nav padding512">
						<li><a href="${applicationRoot}/111112/askAQuestion">ASK A QUESTION</a></li>
                        <li><a href="${applicationRoot}/111112/unansweredQuestion">UNANSWERED QUESTION</a></li>
                    	<c:if test="${menuAction==0}"><li><a href="${applicationRoot}/111111/preAccessLogin">LOGIN</a></li></c:if>
                    </ul>
                </div>
                 <nav class="menu">
                   <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse-sub">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    </div>
                    <c:if test="${menuAction!=0}">
                    <div class="collapse navbar-collapse-sub navbar-left">
                     <ul class="nav navbar-nav" id="nav-top-left">
                        <li><a href="${rootAction}/dashboard" id="top-home" title="Dashboard"></a></li>
						<li><a href="${applicationRoot}/222200/notification?action=notification" id="top-notification"></a>
							<sup class="noti_indi">3</sup>
							<ul class="menu-dynamic">
								<li class="top"><a href="#">Seeks to provide composition rate for Swachh Bharat Cess as applicable to ST under sub-rules 7,7A,7B,7C of rule 6 of STR, 1994</a></li>
								<li><a href="#">Seeks to provide that provisions of notification No. 30/2012 - Service Tax dated the 20th June,2012 shall be applicable for the purposes of</a></li>
								<li><a href="#">Seeks to provide composition rate for Swachh Bharat Cess as applicable to ST under sub-rules 7,7A,7B,7C of rule 6 of STR, 1994</a></li>
								<li><a href="#">Seeks to provide that provisions of notification No. 30/2012 - Service Tax dated the 20th June,2012 shall be applicable for the purposes of</a></li>
								<li class="view-all"><a href="#">View More</a></li>	
							</ul>
						</li>
                        <li><a href="${applicationRoot}/222200/notification?action=message" id="top-support" title="Messages"></a>
							<sup class="noti_indi">200</sup>
							<ul class="menu-dynamic">
								<li class="top"><a href="#">Seeks to provide composition rate for Swachh Bharat Cess as applicable to ST under sub-rules 7,7A,7B,7C of rule 6 of STR, 1994</a></li>
								<li><a href="#">Seeks to provide that provisions of notification No. 30/2012 - Service Tax dated the 20th June,2012 shall be applicable for the purposes of</a></li>
								<li><a href="#">Seeks to provide composition rate for Swachh Bharat Cess as applicable to ST under sub-rules 7,7A,7B,7C of rule 6 of STR, 1994</a></li>
								<li><a href="#">Seeks to provide that provisions of notification No. 30/2012 - Service Tax dated the 20th June,2012 shall be applicable for the purposes of</a></li>
								<li class="view-all"><a href="#">View More</a></li>	
							</ul>
						</li>
                        <li><a href="${applicationRoot}/222200/notification?action=request" id="top-request" title="Request"></a>
							<sup class="noti_indi">3</sup>
							<ul class="menu-dynamic">
								<li class="top"><a href="#">Seeks to provide composition rate for Swachh Bharat Cess as applicable to ST under sub-rules 7,7A,7B,7C of rule 6 of STR, 1994</a></li>
								<li><a href="#">Seeks to provide that provisions of notification No. 30/2012 - Service Tax dated the 20th June,2012 shall be applicable for the purposes of</a></li>
								<li><a href="#">Seeks to provide composition rate for Swachh Bharat Cess as applicable to ST under sub-rules 7,7A,7B,7C of rule 6 of STR, 1994</a></li>
								<li><a href="#">Seeks to provide that provisions of notification No. 30/2012 - Service Tax dated the 20th June,2012 shall be applicable for the purposes of</a></li>
								<li class="view-all"><a href="#">View More</a></li>	
							</ul>
						</li>
						<li><a href="${cdnAppRoot}/logout" id="top-logout" title="Logout">ANAND MAHAJAN</a></li>
                    </ul>
                   </div>
                   </c:if>
                </nav>
            </div><!--/.container-->
        </nav><!--/nav-->
		
    </header><!--/header-->