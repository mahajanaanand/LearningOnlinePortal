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
<<<<<<< HEAD
	              <ul class="nav navbar-nav padding512">
		                <li><a href="EDT_Qestion_Feed_Penal.html">MY PANEL</a></li>
						<li><a href="EDT_Qestion_Feed_Penal.html">QUESTION FEEDING</a></li>
						<li><a href="Authentication_Manager.html">ACCOUNT SETTING</a></li>
=======
	               <%@ page isELIgnored ="false" %>
                   <c:set var="menuAction" value="<%=UserPrincipal.getMenuAction()%>"/>
                   <c:set var="rootApp" value="<%=ApplicationUtility.getRequestApplicationRoot()%>"/>
                   <c:set var="rootAction" value="${rootApp}/${menuAction}"/>
	              <ul class="nav navbar-nav padding512">
	                	<li><a href="${rootAction}/editorPanel">MY PANEL</a></li>
						<li><a href="${rootAction}/questionFeed">QUESTION FEEDING</a></li>
						<li><a href="${applicationRoot}/222200/authenticationManager">ACCOUNT SETTING</a></li>
>>>>>>> refs/remotes/origin/23122015_1_Anand
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
                </nav>
            </div><!--/.container-->
        </nav><!--/nav-->
		
    </header><!--/header-->