<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="kr">

<head>
	<title>찾아오는길</title>
<link rel="canonical"
	href="https://www.wrappixel.com/templates/adminwrap-lite/" />
<link rel="icon" type="image/png" sizes="16x16"
	href="./assets/images/favicon.png">
<link href="./assets/node_modules/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/pages/google-vector-map.css" rel="stylesheet">
<link href="css/colors/default.css" id="theme" rel="stylesheet">
</head>

<body class="fix-header card-no-border fix-sidebar">
	<div class="preloader">
		<div class="loader">
			<div class="loader__figure"></div>
			<p class="loader__label">Admin Wrap</p>
		</div>
	</div>
s	<div id="main-wrapper">
		<header class="topbar">
			<nav class="navbar top-navbar navbar-expand-md navbar-light">
				<div class="navbar-header">
					<a class="navbar-brand" href="index.html"> <!-- Logo icon -->
						<b> <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
							<!-- Dark Logo icon --> <img src="./assets/images/logo-icon.png"
							alt="homepage" class="dark-logo" /> <!-- Light Logo icon --> <img
							src="./assets/images/logo-light-icon.png" alt="homepage"
							class="light-logo" />
					</b> <!--End Logo icon --> <!-- Logo text -->
						<span> <!-- dark Logo text --> <img
							src="./assets/images/logo-text.png" alt="homepage"
							class="dark-logo" /> <!-- Light Logo text --> <img
							src="./assets/images/logo-light-text.png" class="light-logo"
							alt="homepage" /></span>
					</a>
				</div>
				<div class="navbar-collapse">
					<ul class="navbar-nav me-auto">
						<li class="nav-item"><a
							class="nav-link nav-toggler hidden-md-up waves-effect waves-dark"
							href="javascript:void(0)"><i class="fa fa-bars"></i></a></li>
						<li class="nav-item hidden-xs-down search-box"><a
							class="nav-link hidden-sm-down waves-effect waves-dark"
							href="javascript:void(0)"><i class="fa fa-search"></i></a>
							<form class="app-search">
								<input type="text" class="form-control"
									placeholder="Search & enter"> <a class="srh-btn"><i
									class="fa fa-times"></i></a>
							</form></li>
					</ul>
					<ul class="navbar-nav my-lg-0">
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
		<aside class="left-sidebar">
			<div class="scroll-sidebar">
				<nav class="sidebar-nav">
					<ul id="sidebarnav">
						<%@ include file="../leftmenu.jsp"  %>
					</ul>
				<!-- End Sidebar navigation -->
			</div>
			<!-- End Sidebar scroll-->
		</aside>
		<div class="page-wrapper">
			<div class="container-fluid">
				<div class="row page-titles">
					<div class="col-md-5 align-self-center">
						<h3 class="text-themecolor">Google Map</h3>
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
							<li class="breadcrumb-item active">Google Map</li>
						</ol>
					</div>
				</div>
				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-body">
								<h4 class="card-title">찾아오시는 길</h4>
								<div id="map" style="width: 500px; height: 400px;"></div>
						<br><font color="blue"><h2>버스노선</h2></font>
						<sapn>엔씨 백화점 4539 급행 진월07 , 간선 첨단30, 지선 수완49, 지선 지원56, 간선 금남58, 지선 유덕65,
								간선 송암72, 지선 두암81, 지선 임곡89 <br> 중흥시장 4537 간선 송정19 , 지선 지원152 , 농어촌 나주160</sapn>
							</div>
						</div>
					</div>
				</div>
			</div>
  <%@ include file="../footer.jsp"  %>
  		</div>
	</div>
	<script src="./assets/node_modules/jquery/jquery.min.js"></script>
	<script
		src="./assets/node_modules/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="js/perfect-scrollbar.jquery.min.js"></script>
	<script src="js/waves.js"></script>
	<script src="js/sidebarmenu.js"></script>
	<script src="js/custom.min.js"></script>
	<script
		src="https://maps.google.com/maps/api/js?key=AIzaSyCUBL-6KdclGJ2a_UpmB2LXvq7VOcPT7K4&sensor=true"></script>
	<script src="./assets/node_modules/gmaps/gmaps.min.js"></script>
	<script src="./assets/node_modules/gmaps/jquery.gmaps.js"></script>
	
	<!-- Map API(KAKAO) -->
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e682c87aeae9a6021e2fd9c92c8c6871&libraries=drawing"></script>
	<script src="js/map_load.js"></script>
	
	
	
</body>

</html>