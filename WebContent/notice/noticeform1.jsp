<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="kr">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta charset="UTF-8" />
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords"
        content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, AdminWrap lite admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, AdminWrap lite design, AdminWrap lite dashboard bootstrap 5 dashboard template">
    <meta name="description"
        content="AdminWrap Lite is powerful and clean admin dashboard template, inpired from Bootstrap Framework">
    <meta name="robots" content="noindex,nofollow">
    <title>공지작성</title>
    <link rel="canonical" href="https://www.wrappixel.com/templates/adminwrap-lite/" />
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="./assets/images/favicon.png">
    <!-- Bootstrap Core CSS -->
    <link href="./assets/node_modules/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="./assets/node_modules/perfect-scrollbar/css/perfect-scrollbar.css" rel="stylesheet">
    <!-- This page CSS -->
    <!-- chartist CSS -->
    <link href="./assets/node_modules/morrisjs/morris.css" rel="stylesheet"> 
    <!--c3 CSS -->
    <link href="./assets/node_modules/c3-master/c3.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/style.css" rel="stylesheet">
    <!-- Dashboard 1 Page CSS -->
    <link href="css/pages/dashboard1.css" rel="stylesheet">
    <!-- You can change the theme colors from here -->
    <link href="css/colors/default.css" id="theme" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body class="fix-header fix-sidebar card-no-border">
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <div class="loader">
            <div class="loader__figure"></div>
            <p class="loader__label">Admin Wrap</p>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <header class="topbar">
            <nav class="navbar top-navbar navbar-expand-md navbar-light">
                <!-- ============================================================== -->
                <!-- Logo -->
                <!-- ============================================================== -->
                <div class="navbar-header">
                    <a class="navbar-brand" href="index.html">
                        <!-- Logo icon --><b>
                            <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                            <!-- Dark Logo icon -->
                            <img src="./assets/images/logo-icon.png" alt="homepage" class="dark-logo" />
                            <!-- Light Logo icon -->
                            <img src="./assets/images/logo-light-icon.png" alt="homepage" class="light-logo" />
                        </b>
                        <!--End Logo icon -->
                        <!-- Logo text --><span>
                            <!-- dark Logo text -->
                            <img src="./assets/images/logo-text.png" alt="homepage" class="dark-logo" />
                            <!-- Light Logo text -->
                            <img src="./assets/images/logo-light-text.png" class="light-logo" alt="homepage" /></span>
                    </a>
                </div>
                <!-- ============================================================== -->
                <!-- End Logo -->
                <!-- ============================================================== -->
                <div class="navbar-collapse">
                    <!-- ============================================================== -->
                    <!-- toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav me-auto">
                        <li class="nav-item"> <a class="nav-link nav-toggler hidden-md-up waves-effect waves-dark"
                                href="javascript:void(0)"><i class="fa fa-bars"></i></a> </li>
                        <!-- ============================================================== -->
                        <!-- Search -->
                        <!-- ============================================================== -->
                        <li class="nav-item hidden-xs-down search-box"> <a
                                class="nav-link hidden-sm-down waves-effect waves-dark" href="javascript:void(0)"><i
                                    class="fa fa-search"></i></a>
                            <form class="app-search">
                                <input type="text" class="form-control" placeholder="Search & enter"> <a
                                    class="srh-btn"><i class="fa fa-times"></i></a></form>
                        </li>
                    </ul>
                    <!-- ============================================================== -->
                    <!-- User profile and search -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav my-lg-0">
                        <!-- ============================================================== -->
                        <!-- Profile -->
                        <!-- ============================================================== -->
                        <li class="nav-item dropdown u-pro">
                            <a class="nav-link dropdown-toggle waves-effect waves-dark profile-pic" href="#"
                                id="navbarDropdown" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img
                                    src="./assets/images/users/1.jpg" alt="user" class="" /> <span
                                    class="hidden-md-down">Mark Sanders &nbsp;</span> </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown"></ul>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <aside class="left-sidebar">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar">
                <!-- Sidebar navigation-->
				<%@ include file="../leftmenu.jsp"  %>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </aside>
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Bread crumb and right sidebar toggle -->
                <!-- ============================================================== -->
                <div class="row page-titles">
                    <div class="col-md-5 align-self-center">
                        <h3 class="text-themecolor">Q&A Board</h3>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                            <li class="breadcrumb-item active">Q&A Board</li>
                        </ol>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- End Bread crumb and right sidebar toggle -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Sales Chart and browser state-->
                <!-- ============================================================== -->
	<form action="boardReply.bizpoll" name="frm" method="post"
		enctype="multipart/form-data">
		<input type="hidden" name="articleno" value="${replyInfo.articleno} }">
		<input type="hidden" name="ref" value="${replyInfo.ref} }"> <input
				type="hidden" name="re_step" value="${replyInfo.re_step} }">
		<input type="hidden" name="re_level" value="${replyInfo.re_level} }">
		<input type="hidden" name="id" value="${sessionScope.replyInfo.id} }">

		<table align="center">
			<tr>
				<td align="right">글쓴이&nbsp;</td>
				<td><input type="text" size="5"
					value="${sessionScope.loginUser.id }" disabled="disabled"></td>
			</tr>

			<tr>
				<td align="right">제목&nbsp;</td>
				<td><input type="text" size="67" maxlength="100" name="subject"></td>
			</tr>

			<tr>
				<td align="right">내용&nbsp;</td>
				<td><textarea name="content" rows="10" cols="65"
						maxlength="4000"></textarea></td>
			</tr>

			<tr>
				<td align="right">이미지파일 첨부 :</td>
				<td><input type="file" name="fileName"
					onchange="readURL(this);"></td>
				<td><img id="preview" alt="attach" src="#" width="200"
					height="200"></td>
			</tr>

			<tr>
				<td align="right"></td>
				<td><input type="submit" value="댓글 반영하기"></td>
				<td><input type="button" value="취소"
					onclick="backToList(this.form)"></td>
			</tr>
		</table>
	</form>                <!-- ============================================================== -->
                <!-- End Notification And Feeds -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- End Page Content -->
                <!-- ============================================================== -->
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <!-- <footer class="footer"> Â© 2021 Adminwrap by <a href="https://www.wrappixel.com/">wrappixel.com</a> </footer> -->
            <%@ include file="../footer.jsp"  %>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="./assets/node_modules/jquery/jquery.min.js"></script>
    <!-- Bootstrap popper Core JavaScript -->
    <script src="./assets/node_modules/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="js/perfect-scrollbar.jquery.min.js"></script>
    <!--Wave Effects -->
    <script src="js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="js/custom.min.js"></script>
    <!-- ============================================================== -->
    <!-- This page plugins -->
    <!-- ============================================================== -->
    <!--morris JavaScript -->
    <script src="./assets/node_modules/raphael/raphael-min.js"></script>
    <script src="./assets/node_modules/morrisjs/morris.min.js"></script>
    <!--c3 JavaScript -->
    <script src="./assets/node_modules/d3/d3.min.js"></script>
    <script src="./assets/node_modules/c3-master/c3.min.js"></script>
    <!-- Chart JS -->
    <script src="js/dashboard1.js"></script>
</body>
</html>