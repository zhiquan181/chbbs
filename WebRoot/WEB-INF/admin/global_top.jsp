<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tuzki-社区论坛后台系统</title>
<link rel="icon" type="image/png" sizes="32x32"	href="/chbbs/resource/home/images/favicon.ico">
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
<meta name="description" content="Developed By M Abdur Rokib Promy">
<meta name="keywords" content="Admin, Bootstrap 3, Template, Theme, Responsive">
<!-- bootstrap 3.0.2 -->
<link href="/chbbs/resource/btzero7/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<!-- font Awesome -->
<link href="/chbbs/resource/btzero7/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<!-- Ionicons -->
<link href="/chbbs/resource/btzero7/css/ionicons.min.css" rel="stylesheet" type="text/css" />
<!-- Morris chart -->
<link href="/chbbs/resource/btzero7/css/morris/morris.css" rel="stylesheet" type="text/css" />
<!-- jvectormap -->
<link
	href="/chbbs/resource/btzero7/css/jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" type="text/css" />
<!-- Date Picker -->
<link href="/chbbs/resource/btzero7/css/datepicker/datepicker3.css" rel="stylesheet" type="text/css" />
<!-- fullCalendar -->
<!-- <link href="/chbbs/resource/btzero7/css/fullcalendar/fullcalendar.css" rel="stylesheet" type="text/css" /> -->
<!-- Daterange picker -->
<link
	href="/chbbs/resource/btzero7/css/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
<!-- iCheck for checkboxes and radio inputs -->
<link href="/chbbs/resource/btzero7/css/iCheck/all.css" rel="stylesheet" type="text/css" />
<!-- bootstrap wysihtml5 - text editor -->
<!-- <link href="/chbbs/resource/btzero7/css/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet" type="text/css" /> -->
<!-- Theme style -->
<link href="/chbbs/resource/btzero7/css/style.css" rel="stylesheet" type="text/css" />



<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond./chbbs/resource/btzero7/js/1.3.0/respond.min.js"></script>
<![endif]-->
</head>
<body class="skin-black">
	<!-- header logo: style can be found in header.less -->
	<header class="header">
		<a href="adminManager" class="logo"> ADMINISTRATOR </a>
		<!-- Header Navbar: style can be found in header.less -->
		<nav class="navbar navbar-static-top" role="navigation">
			<!-- Sidebar toggle button-->
			<a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas"
				role="button"> <span class="sr-only">Toggle navigation</span> <span
				class="icon-bar"></span> <span class="icon-bar"></span> <span
				class="icon-bar"></span> </a>
			<div class="navbar-right">
				<ul class="nav navbar-nav">
					<!-- User Account: style can be found in dropdown.less -->
					<li class="dropdown user user-menu"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"> <i
							class="fa fa-user"></i> <span>${auser_active.username}<i
								class="caret"></i>
						</span> </a>
						<ul class="dropdown-menu dropdown-custom dropdown-menu-right">
							<li class="dropdown-header text-center">Account</li>

							<li><a href="#"> <i
									class="fa fa-clock-o fa-fw pull-right"></i> <span
									class="badge badge-success pull-right">10</span> Updates</a> <a
								href="#"> <i class="fa fa-envelope-o fa-fw pull-right"></i>
									<span class="badge badge-danger pull-right">5</span> Messages</a> <a
								href="#"><i class="fa fa-magnet fa-fw pull-right"></i> <span
									class="badge badge-info pull-right">3</span> Subscriptions</a> <a
								href="#"><i class="fa fa-question fa-fw pull-right"></i> <span
									class="badge pull-right">11</span> FAQ</a></li>

							<li class="divider"></li>

							<li><a href="#"> <i class="fa fa-user fa-fw pull-right"></i>
									Profile </a> <a data-toggle="modal" href="/chbbs" target="_blank">
									<i class="fa fa-cog fa-fw pull-right"></i> Web Site </a></li>

							<li class="divider"></li>

							<li><a href="alogout"><i
									class="fa fa-ban fa-fw pull-right"></i> Logout</a></li>
						</ul></li>
				</ul>
			</div>
		</nav>
	</header>
	<div class="wrapper row-offcanvas row-offcanvas-left">
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="left-side sidebar-offcanvas">
			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar">
				<!-- sidebar menu: : style can be found in sidebar.less -->
				<ul class="sidebar-menu">
					<li><a href="userListPaging?currentPage=1"> <i class="fa fa-dashboard"></i> <span>会员管理</span></a></li>
					<li><a href="topicListPaging?currentPage=1"> <i class="fa fa-gavel"></i> <span>帖子管理</span></a></li>
					<li><a href="waterListPaging?currentPage=1"> <i class="fa fa-ticket"></i> <span>评论留言</span></a></li>
					<li><a href="noticeDisplay"> <i class="fa fa-globe"></i> <span>公告管理</span> </a></li>
					<li><a href="linkListPaging?currentPage=1"> <i class="fa fa-star"></i> <span>友情链接</span></a></li>
					<li><a href="auserListPaging?currentPage=1"> <i class="fa fa-user"></i> <span>系统用户</span></a></li>
				</ul>
			</section>
			<!-- /.sidebar -->
		</aside>
		<aside class="right-side">