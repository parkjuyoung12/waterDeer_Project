<%@page import="com.water.dto.RoomDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>



<html lang="en">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />



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
<title>수강신청</title>
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
<style>
button.btn-design {
	width: 120px;
	height: 30px;
	margin-top: -15px;
	margin-left: -60px;
	line-height: 15px;
	cursor: pointer;
}

.modal {
	position: fixed;
	width: 100%;
	height: 50%;
	background: rgba(0, 0, 0, 0.95);
	top: 25%;
	left: 40%;
	display: none;
	margin: auto;
	padding-top: 5px;
	padding-left: 30px;
	padding-right: 30px;
	padding-bottom: 15px;
}

.modal_positioner {
	position: flex;
	flex-direction: column;
	justify-content: space-between;
	align-items: center;
	width: 100%;
	height: 100%;
}

.modal_title {
	color: white;
	font-size: 12pt;
	text-align: center;
	padding-bottom: 15px;
	margin: 5px;
	border-radius: 5px;
	background-color: #222222;
	align-items: center;
}
.subject-container {
	display: inline-block;
	flex-direction: row;
	justify-content: space-between; 
	float: right;
	width: 60%;
	margin: 15px;
}
.classroom-container {
	display: flex;
	flex-direction: row;
	justify-content: space-between; 
	width: 50%;
	padding: 30px;
	margin: 15px;
	bottom: 10px;
}
.classroom-container select {
	height: 30px;
}
.classroom-container input[type="text"]{
	text-align: right;
}
.search-container-subj {
	display: flex;
	flex-direction: row;
	justify-content: space-between;
	align-items: flex-start;
}
.search-container-subj>* {
	margin-top: 10px;
	margin-bottom: 10px;
}

.search-button-grp {
	display: flex;
	flex-direction: column;
	justify-content: space-between;
	align-items: flex-end;
}

.search-button-grp input{
	width: 100%;
	margin-bottom: 5px;
}

.radio-btn-subj {
	position: relative!important;
	opacity: 100!important;
	left: 0!important;
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

.time-table {
	margin: auto;
	width: 480px;
	height: 360px;
	text-align: center;
}

.time-table th, .time-table td {
	border-style: solid;
	border-width: 1px;
}
.time-table tbody{
	background-color: #DDDDDD;
	color: black;
}
</style>
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
						<h3 class="text-themecolor">credit</h3>
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
							<li class="breadcrumb-item active">credit</li>
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
									
									<div>
										<div class="modal">
											<div class="modal_positioner">
												<div class="modal_title">과목 조회</div>
												<div class="subj_list">
													<table>
														<thead>
															<tr>
																<th></th>
																<th>학과</th>
																<th>과목</th>
																<th>시간</th>
																<th>학년</th>
																<th>교수명</th>
																<hr/>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td>
																	<input type="radio" class="radio-btn-subj" name="selected_subj" value="SUBJ-1">
																</td>
																<td>정보보안학과</td>
																<td>침입탐지와차단</td>
																<td>여기는 시간</td>
																<td>1</td>
																<td>교수명</td>
															</tr>
															<tr>
																<td>
																	<input type="radio" class="radio-btn-subj" name="selected_subj" value="SUBJ-2">
																</td>
																<td>정보보안학과</td>
																<td>시스템보안</td>
																<td>여기는 시간</td>
																<td>1</td>
																<td>교수명</td>
															</tr>
														</tbody>
													</table>
												</div>
												<div class="search-container-subj">
													<div class="search-button-grp">
														<input type="button" id="choose" value="완료" />
														<input type="button" id="modal_closer" value="닫기" />
													</div>
												</div>
											</div>
										</div>
									</div>

									<table class="time-table" id="time_table">
										<thead>
											<tr>
												<th>과목코드</th>
												<th>학과</th>
												<th>과목</th>
												<th>강의실</th>
												<th>교수</th>
												<th>시간</th>
												<th>인원</th>
											</tr>
										</thead>
										<tbody>
										<%-- JS에서 채워줌 --%>
										</tbody>
									</table>
								</div>
								<div class="subject-container">
										<input 	type="text" placeholder="과목 이름" readonly
												id="subj_name" >
										<button id="modal_opener" >과목 조회</button>
										<button id="modal_opener" >수강 등록</button>
									</div>
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
			<script src="js/lectrue/lectureinsert.js"></script>
</body>

</html>