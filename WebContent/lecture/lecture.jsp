<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>

<style>
button {
	position: absolute;
	top: 50%;
	left: 50%;
	width: 120px;
	height: 30px;
	margin-top: -15px;
	margin-left: -60px;
	line-height: 15px;
	cursor: pointer;
}

.modal {
	position: absolute;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, 0.8);
	top: 0;
	left: 0;
	display: none;
}

.modal_content {
	width: 400px;
	height: 200px;
	background: #fff;
	border-radius: 10px;
	position: relative;
	top: 50%;
	left: 50%;
	margin-top: -100px;
	margin-left: -200px;
	text-align: center;
	box-sizing: border-box;
	padding: 74px 0;
	line-height: 23px;
	cursor: pointer;
}

table {
	width: 100%;
	border: 1px solid #ffffff;
	background-color: gray;
	color: white;
}

th, td {
	border: 1px solid #ffffff;
	padding: 10px;
}
</style>

<html lang="en">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />


<script type="text/javascript">
	$(function() {

		$("button").click(function() {
			$(".modal").fadeIn();
		});

		$(".modal_content").click(function() {
			$(".modal").fadeOut();
		});
	});

	$(function() {
		$('.more').click(function() {
		})
	});

	$(function() {
		$('.more').click(function() {
			$('.m_li').fadeIn(1000);
		})
	});
</script>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords"
	content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, AdminWrap lite admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, AdminWrap lite design, AdminWrap lite dashboard bootstrap 5 dashboard template">
<meta name="description"
	content="AdminWrap Lite is powerful and clean admin dashboard template, inpired from Bootstrap Framework">
<meta name="robots" content="noindex,nofollow">
<title>강의관리</title>
<link rel="canonical"
	href="https://www.wrappixel.com/templates/adminwrap-lite/" />
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
	href="./assets/images/favicon.png">
<!-- Bootstrap Core CSS -->
<link href="./assets/node_modules/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom CSS -->
<link href="css/style.css" rel="stylesheet">
<!-- You can change the theme colors from here -->
<link href="css/colors/default.css" id="theme" rel="stylesheet">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body class="fix-header card-no-border fix-sidebar">

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
					<a class="navbar-brand" href="index.html"> <!-- Logo icon --> <b>
							<!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
							<!-- Dark Logo icon --> <img src="./assets/images/logo-icon.png"
							alt="homepage" class="dark-logo" /> <!-- Light Logo icon --> <img
							src="./assets/images/logo-light-icon.png" alt="homepage"
							class="light-logo" />
					</b> <!--End Logo icon --> <!-- Logo text --> <span> <!-- dark Logo text -->
							<img src="./assets/images/logo-text.png" alt="homepage"
							class="dark-logo" /> <!-- Light Logo text --> <img
							src="./assets/images/logo-light-text.png" class="light-logo"
							alt="homepage" /></span>
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
						<li class="nav-item"><a
							class="nav-link nav-toggler hidden-md-up waves-effect waves-dark"
							href="javascript:void(0)"><i class="fa fa-bars"></i></a></li>
						<!-- ============================================================== -->
						<!-- Search -->
						<!-- ============================================================== -->
						<li class="nav-item hidden-xs-down search-box"><a
							class="nav-link hidden-sm-down waves-effect waves-dark"
							href="javascript:void(0)"><i class="fa fa-search"></i></a>
							<form class="app-search">
								<input type="text" class="form-control"
									placeholder="Search & enter"> <a class="srh-btn"><i
									class="fa fa-times"></i></a>
							</form></li>
					</ul>
					<!-- ============================================================== -->
					<!-- User profile and search -->
					<!-- ============================================================== -->
					<ul class="navbar-nav my-lg-0">
						<!-- ============================================================== -->
						<!-- Profile -->
						<!-- ============================================================== -->
						<li class="nav-item dropdown u-pro"><a
							class="nav-link dropdown-toggle waves-effect waves-dark profile-pic"
							href="" data-bs-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"><img src="./assets/images/users/1.jpg"
								alt="user" class="" /> <span class="hidden-md-down">Mark
									Sanders &nbsp;</span> </a>
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
				<nav class="sidebar-nav">
					<ul id="sidebarnav">
						<%@ include file="../leftmenu.jsp"%>
					</ul>
				</nav>
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
						<h3 class="text-themecolor">Lectrue</h3>
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
							<li class="breadcrumb-item active">Lectrue</li>
						</ol>
					</div>
				</div>
				<!-- ============================================================== -->
				<!-- End Bread crumb and right sidebar toggle -->
				<!-- ============================================================== -->
				<!-- ============================================================== -->
				<!-- Start Page Content -->
				<!-- ============================================================== -->
				<!-- Row -->
				<div class="row">
					<!-- Column -->
					<div class="col-lg-4 col-xlg-3 col-md-5" style="width: 100%;">
						<div class="card">
							<div class="card-body">
								<div class="container" role="main">
									<h6>강의관리</h6>

									<table>
										<thead>
											<tr>
												<td>학년</td>
												<td>학번</td>
												<td>학과</td>
												<td>이름</td>
												<td>연락처</td>
												<td>특이사항</td>
											</tr>
										</thead>
										<tbody style="background-color: #DDDDDD; color: black;">
											<tr>
												<td>1</td>
												<td>2</td>
												<td>컴퓨터공학과</td>
												<td>김길동</td>
												<td>010-0000-0000</td>
												<td>-</td>
											</tr>
											<tr>
												<td>1</td>
												<td>2</td>
												<td>컴퓨터공학과</td>
												<td>김길동</td>
												<td>010-0000-0000</td>
												<td>-</td>
											</tr>
										</tbody>
										
									</table>
									
									
								</div>
							</div>
						</div>
					</div>
				</div>
				<%-- CSS는 나중에 적용해 --%>
				<button style="left: 80%;" onclick="location.href='lectureinsert.myuk'">강의 등록</button>
			</div>
		</div>
	</div>
	<%@ include file="../footer.jsp"%>
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
	<!-- Bootstrap tether Core JavaScript -->
	<script
		src="./assets/node_modules/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- slimscrollbar scrollbar JavaScript -->
	<script src="js/perfect-scrollbar.jquery.min.js"></script>
	<!--Wave Effects -->
	<script src="js/waves.js"></script>
	<!--Menu sidebar -->
	<script src="js/sidebarmenu.js"></script>
	<!--Custom JavaScript -->
	<script src="js/custom.min.js"></script>
	<script src="/js/lectrue/lectrue.js"></script>
</body>

</html>