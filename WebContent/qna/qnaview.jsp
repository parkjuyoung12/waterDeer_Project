<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

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
<title>상세 글</title>
<link rel="canonical"
	href="https://www.wrappixel.com/templates/adminwrap-lite/" />
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
	href="./assets/images/favicon.png">
<!-- Bootstrap Core CSS -->
<link href="./assets/node_modules/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom CSS -->
<link href="./css/style.css" rel="stylesheet">
<!-- You can change the theme colors from here -->
<link href="./css/colors/default.css" id="theme" rel="stylesheet">

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
						<h3 class="text-themecolor">Story</h3>
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
							<li class="breadcrumb-item active">Story</li>
						</ol>
					</div>
				</div>
				<!-- ============================================================== -->
				<!-- End Bread crumb and right sidebar toggle -->
				<!-- ============================================================== -->
				<!-- ============================================================== -->
				<!-- Start Page Content -->
				<!-- ============================================================== -->
				<div class="row">
					<!-- column -->
					<div class="col-12">
						<div class="card">
							<div class="card-body">
								<h4 class="card-title">상세내용(질문)</h4>
								<div class="table-responsive">
									<table class="table">
										<thead>
											<tr>
												<th>글번호</th>
												<td>${qnaBoard.num}</td>
												<th>날짜</th>
												<td>${qnaBoard.indate}</td>
											</tr>

											<tr>
												<th>제목</th>
												<td>${qnaBoard.title}</td>
												<th>작성자</th>
												<td>${qnaBoard.member_name}</td>
												<th>조회수</th> 
												<td>${qnaBoard.read_count}</td>
											</tr>

										</thead>

									</table>
											<div class="mb-3">
												<div class="card">
													${qnaBoard.content}
												</div>
												<!-- <input class="form-control" rows="5" name="content"
													id="content"></input> -->
												<c:if test='${loginUser.member_position == "STUD"}'>
													<form id="notice_view_btn_form" style="display: flex; flex-direction: row; justify-content: flex-end;"
															action="qnaeditform.myuk" method="post" >
													<input type="hidden" id="num" name="num" value="${qnaBoard.num}">
														<span><input type="submit" class="btn btn-sm btn-primary" value="수정" onclick="goToEditForm(this)"
																	style="margin-right: 5px;"></span>
															<span><input type="button" class="btn btn-sm btn-primary" value="삭제" onclick="ckAndDelete1(this)"></span>
													</form>
												</c:if> 
											</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- ============================================================== -->
				<!-- End PAge Content -->
				<!-- ============================================================== -->
			</div>
			<!-- ============================================================== -->
			<!-- End Container fluid  -->
			<!-- ============================================================== -->
			<!-- ============================================================== -->
			<!-- footer -->
			<!-- ============================================================== -->
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
	<script type="text/javascript">
	let loginUserPosition = '${sessionScope.loginUser.member_position}' 
	</script>
	<script src="./assets/node_modules/jquery/jquery.min.js"></script>
	<!-- Bootstrap tether Core JavaScript -->
	<script
		src="./assets/node_modules/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- slimscrollbar scrollbar JavaScript -->
	<script src="./js/perfect-scrollbar.jquery.min.js"></script>
	<!--Wave Effects -->
	<script src="./js/waves.js"></script>
	<!--Menu sidebar -->
	<script src="./js/sidebarmenu.js"></script>
	<!--Custom JavaScript -->
	<script src="./js/custom.min.js"></script>
	<!-- jQuery peity -->
	<script src="./assets/node_modules/peity/jquery.peity.min.js"></script>
	<script src="./assets/node_modules/peity/jquery.peity.init.js"></script>
	<!-- Action JavaScript -->
	<script src="./js/notice/noticeview.js"></script>
</body>

</html>