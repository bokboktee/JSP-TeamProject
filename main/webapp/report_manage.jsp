<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<!-- =========================================================
* Sneat - Bootstrap 5 HTML Admin Template - Pro | v1.0.0
==============================================================

* Product Page: https://themeselection.com/products/sneat-bootstrap-html-admin-template/
* Created by: ThemeSelection
* License: You must have a valid license purchased in order to legally use the theme for your project.
* Copyright ThemeSelection (https://themeselection.com)

=========================================================
 -->
<!-- beautify ignore:start -->
<html lang="en" class="light-style layout-menu-fixed" dir="ltr" data-theme="theme-default" data-assets-path="assets/" data-template="vertical-menu-template-free">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

<title>냥신사 | 상품관리</title>

<meta name="description" content="" />

<!-- Favicon -->
<link rel="icon" type="image/x-icon" href="assets/img/favicon/favicon.ico" />

<!-- Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet" />

<!-- Icons. Uncomment required icon fonts -->
<link rel="stylesheet" href="assets/vendor/fonts/boxicons.css" />

<!-- Core CSS -->
<link rel="stylesheet" href="assets/vendor/css/core.css" class="template-customizer-core-css" />
<link rel="stylesheet" href="assets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
<link rel="stylesheet" href="assets/css/demo.css" />

<!-- Vendors CSS -->
<link rel="stylesheet" href="assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

<!-- Page CSS -->
<link rel="stylesheet" href="css/style.css" />

<!-- Helpers -->
<script src="assets/vendor/js/helpers.js"></script>
<!-- 메뉴바 페이지네이션 제이쿼리 -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
<!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
<script src="assets/js/config.js"></script>
<style type="text/css">
.report-menubar li {
	list-style-type: none;
	float: left;
	margin-left: 20px;
}


/* 활성 메뉴 항목의 스타일 */ 
.report-menubar a.active { color: black; font-weight: bold; }


/* 비활성 메뉴 항목 스타일 */ 
.report-menubar a:not(.active) { color: gray; }

.report-menubar a:hover {
 
  cursor: pointer;
}


.modal-btn-box {
	width: 100%;
	text-align: center;
}

.modal-btn-box button {
	display: inline-block;
	width: 150px;
	height: 50px;
	background-color: #ffffff;
	border: 1px solid #e1e1e1;
	cursor: pointer;
	padding-top: 8px;
}

.popup-wrap {
	background-color: rgba(0, 0, 0, .3);
	justify-content: center;
	align-items: center;
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	display: none;
	padding: 15px;
}

.popup {
	width: 100%;
	max-width: 400px;
	background-color: #ffffff;
	border-radius: 10px;
	overflow: hidden;
	background-color: #264db5;
	box-shadow: 5px 10px 10px 1px rgba(0, 0, 0, .3);
}

.popup-head {
	width: 100%;
	height: 50px;
	display: flex;
	align-items: center;
	justify-content: center;
	background-color: #6667AB;
}

.head-title {
	font-size: 25px;
	font-weight: 700;
	text-align: center;
	color: #FFFFFF;
}

.popup-body {
	width: 100%;
	background-color: #ffffff;
}

.body-content {
	width: 100%;
	padding: 30px;
}

.body-titlebox {
	text-align: justify;
	width: 100%;
	height: 40px;
	margin-bottom: 10px;
	margin-left: 17px;
}

.body-contentbox {
	word-break: break-word;
	overflow-y: auto;
	min-height: 100px;
	max-height: 200px;
}

.popup-foot {
	width: 100%;
	height: 50px;
	background-color: #6667AB;
}

.pop-btn {
	display: inline-flex;
	width: 50%;
	height: 100%;
	float: left;
	justify-content: center;
	align-items: center;
	color: #ffffff;
	cursor: pointer;
}

.pop-btn2 {
	display: inline-flex;
	width: 50%;
	height: 100%;
	float: left;
	justify-content: center;
	align-items: center;
	color: #ffffff;
	cursor: pointer;
	border: none;
	background: none;
	font-size: 17px;
}

.pop-btn.confirm {
	border-right: 1px solid #FFFFFF;
}

.report-box {
	padding: 15px;
}

.report-box2 {
	margin: 6px;
}

.report-text {
	width: 300px;
	height: 40px;
}

.report-modal {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
}

.report-modal-btn {
	background-color: #F9B514;
	padding: 5px 10px;
	border-radius: 4px;
	cursor: pointer;
}

.report-modal-bg {
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.6);
}

.report-modalBox {
	position: absolute;
	background-color: #fff;
	width: 300px;
	height: 200px;
	padding: 15px;
	display: flex;
	flex-direction: column;
	align-items: center;
	border-radius: 10px;
}

.report-modalBox .report-closeBtn {
	width: 100px;
	height: 35px;
	margin: 15px;
	color: #FFFFFF;
	background-color: #6667AB;
	border: none;
}

.report-modal-hidden {
	display: none;
}
</style>
</head>

<body>
	<!-- Layout wrapper -->
	<div class="layout-wrapper layout-content-navbar">
		<div class="layout-container">
			<!-- Menu -->

			<aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
				<div class="app-brand demo">
					<a href="main.do" class="app-brand-link">
						<img src="img/logo.png" width="150px" alt="냥신사 홈으로 가기">
					</a>
					<a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
						<i class="bx bx-chevron-left bx-sm align-middle"></i>
					</a>
				</div>

				<div class="menu-inner-shadow"></div>

				<ul class="menu-inner py-1">
					<!-- Dashboard -->
					<li class="menu-item">
						<a href="main.do" class="menu-link">
							<i class="menu-icon tf-icons bx bx-home-circle"></i>
							<div data-i18n="Analytics">냥신사홈</div>
						</a>
					</li>
					<li class="menu-item">
						<a href="adminIndex.do" class="menu-link">
							<i class="menu-icon tf-icons bx bx-home-circle"></i>
							<div data-i18n="Analytics">관리자홈</div>
						</a>
					</li>


					<!-- Components -->
					<li class="menu-header small text-uppercase">
						<span class="menu-header-text">관리자 메뉴</span>
					</li>
					<!-- Cards -->
					<li class="menu-item">
						<a href="memberManagePage.do" class="menu-link">
							<i class="menu-icon tf-icons bx bx-user-check"></i>
							<div data-i18n="Basic">회원관리</div>
						</a>
					</li>

					<!-- 상품관리 -->
					<li class="menu-item">
						<a href="productManagePage.do" class="menu-link">
							<i class="menu-icon tf-icons bx bx-store"></i>

							<div data-i18n="Basic">상품관리</div>
						</a>
					</li>

					<!-- 주문관리 -->
					<li class="menu-item">
						<a href="orderManagePage.do" class="menu-link">
							<i class="menu-icon tf-icons bx bx-receipt"></i>
							<div data-i18n="Basic">주문관리</div>
						</a>
					</li>

					<!-- 리뷰관리 -->
					<li class="menu-item">
						<a href="reviewManagePage.do" class="menu-link">
							<i class="menu-icon tf-icons bx bx-message-alt-dots"></i>
							<div data-i18n="Basic">리뷰관리</div>
						</a>
					</li>

					<!-- 글 관리 -->
					<li class="menu-item">
						<a href="reviewManagePage.do" class="menu-link">
							<i class="menu-icon tf-icons bx bx-message-alt-dots"></i>
							<div data-i18n="Basic">게시글 관리</div>
						</a>
					</li>
					<!-- 신고 관리 -->
					<li class="menu-item">
						<a href="reviewManagePage.do" class="menu-link">
							<i class="menu-icon tf-icons bx bx-message-alt-dots"></i>
							<div data-i18n="Basic">신고 관리</div>
						</a>
					</li>
				</ul>
			</aside>
			<!-- / Menu -->

			<!-- Layout container -->
			<div class="layout-page">

				<!-- Navbar -->
				<nav class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme" id="layout-navbar">
					<div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
						<a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
							<i class="bx bx-menu bx-sm"></i>
						</a>
					</div>

					<div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">
						<!-- Search -->
						<div class="navbar-nav align-items-center">
							<div class="nav-item d-flex align-items-center">
								<!-- <i class="bx bx-search fs-4 lh-0"></i> <input type="text" class="form-control border-0 shadow-none" placeholder="Search..." aria-label="Search..."> -->
							</div>
						</div>
						<!-- /Search -->

						<ul class="navbar-nav flex-row align-items-center ms-auto">


							<!-- User -->
							<li class="nav-item navbar-dropdown dropdown-user dropdown">
								<a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
									<div class="avatar avatar-online">
										<img src="assets/img/avatars/admin.png" alt="관리자 프로필 사진" class="w-px-40 h-auto rounded-circle">
									</div>
								</a>
								<ul class="dropdown-menu dropdown-menu-end">
									<li>
										<a class="dropdown-item">
											<div class="d-flex">
												<div class="flex-shrink-0 me-3">
													<div class="avatar avatar-online">
														<img src="assets/img/avatars/admin.png" alt="관리자 프로필 사진" class="w-px-40 h-auto rounded-circle">
													</div>
												</div>
												<div class="flex-grow-1">
													<span class="fw-semibold d-block">${member.userName}</span> <small class="text-muted">관리자</small>
												</div>
											</div>
										</a>
									</li>
									<li>
										<div class="dropdown-divider"></div>
									</li>
									<!--                            <li><a class="dropdown-item" href="#"> <i class="bx bx-user me-2"></i> <span class="align-middle">My Profile</span>
                           </a></li> -->

									<li>
										<a class="dropdown-item" href="logout.do">
											<i class="bx bx-power-off me-2"></i>
											<span class="align-middle">로그아웃</span>
										</a>
									</li>
								</ul>
							</li>
							<!--/ User -->
						</ul>
					</div>
				</nav>
				<!-- / Navbar -->

				<!-- Content wrapper -->
				<div class="content-wrapper">
					<!-- Content -->

					<div class="container-xxl flex-grow-1 container-p-y">
						<h4 class="fw-bold py-3 mb-4">
							<span class="text-muted fw-light">관리자 메뉴 ></span> 신고 관리
						</h4>

						<!-- Hoverable Table rows -->
						<div class="card">
							<h6 class="card-header">
								<ul class="report-menubar"> 
								<li> <a class="active" onclick="list(1,1);">게시글 </a> 	</li> 
								
								<li> <a onclick="list(1,2);">댓글</a> </li> 
								</ul>

							</h6>
							<div class="table-responsive text-nowrap">
								<table class="table table-hover">
									<thead id="dataTableList">
										
									</thead>
									<!-- 목록 출력부분 -->
									<tbody class="table-border-bottom-0" id="dataTableBody">
									</tbody>
								</table>
								<!-- 페이지네이션 부분 -->
								<div class="product__pagination">
									<ul id="pagingul"></ul>
								</div>
							</div>
						</div>
						<!--/ Hoverable Table rows -->

						<hr class="my-5" />

					</div>
					<!-- / Content -->

					<!-- Footer -->
					<footer class="content-footer footer bg-footer-theme">
						<div class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
							<div class="mb-2 mb-md-0">
								©
								<script>
									document.write(new Date().getFullYear());
								</script>
								, made with ❤️ by
								<a href="https://themeselection.com" target="_blank" class="footer-link fw-bolder">ThemeSelection</a>
							</div>
							<div>
								<a href="https://themeselection.com/license/" class="footer-link me-4" target="_blank">License</a>
								<a href="https://themeselection.com/" target="_blank" class="footer-link me-4">More Themes</a>
								<a href="https://themeselection.com/demo/sneat-bootstrap-html-admin-template/documentation/" target="_blank" class="footer-link me-4">Documentation</a>
								<a href="https://github.com/themeselection/sneat-html-admin-template-free/issues" target="_blank" class="footer-link me-4">Support</a>
							</div>
						</div>
					</footer>
					<!-- / Footer -->

					<div class="content-backdrop fade"></div>
				</div>
				<!-- Content wrapper -->
			</div>
			<!-- / Layout page -->
		</div>

		<!-- Overlay -->
		<div class="layout-overlay layout-menu-toggle"></div>
	</div>
	<!-- / Layout wrapper -->



	<!-- 모달창 -->
	<div class="report-modal report-modal-hidden">
		<div class="report-modal-bg"></div>
		<div class="report-modalBox">
			<!-- <h2 style="font-size: 30px; padding: 20px;">신고처리</h2> -->
			<img src="img/siren.png" style="width: 40px; margin-bottom: 20px;">
			<form id="reportForm" action="updateReport.do" method="post">
				<input type="hidden" id="targetNum" name="targetNum" value="">
				<input type="hidden" id="reportNum" name="reportNum" value="">
				<input type="hidden" id="userNum" name="userNum" value="">
				<input type="hidden" id="reporterNum" name="reporterNum" value="">
				<input type="hidden" id="reportStep" name="reportStep" value="">
				<p style="font-size: 15px; margin-left: 15px; justify-content: space-around; display: flex;">
					<select name="procStatus" style="width: 70px; height: 30px; border: 1px solid #6667ab52; margin-right: 13px; text-align: center;">
						<option value="cancle">철회</option>
						<option value="delete">삭제</option>
					</select>
				</p>
				<div>
					<input type="submit" value="처리" class="report-closeBtn">
					<button class="report-closeBtn">닫기</button>
				</div>
			</form>
		</div>
	</div>
	<script>
  

</script>
	<!-- Core JS -->
	<!-- build:js assets/vendor/js/core.js -->
	<script src="assets/vendor/libs/jquery/jquery.js"></script>
	<script src="assets/vendor/libs/popper/popper.js"></script>
	<script src="assets/vendor/js/bootstrap.js"></script>
	<script src="assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

	<script src="assets/vendor/js/menu.js"></script>
	<!-- endbuild -->

	<!-- Vendors JS -->

	<!-- Main JS -->
	<script src="assets/js/main.js"></script>

	<!-- Page JS -->
	<script src="js/adm_rp_list.js"></script>


	<!-- Place this tag in your head or just before your close body tag. -->
	<script async defer src="https://buttons.github.io/buttons.js"></script>

	<script>

	// 메뉴 항목 가져오기 
	const menuItems = document.querySelectorAll('.report-menubar a');


	// 메뉴 항목을 반복하고 클릭 이벤트 리스너 추가 
	menuItems.forEach(item => { item.addEventListener('click', function() { // 모든 항목에서 활성 클래스 제거
		 menuItems.forEach(item => { item.classList.remove('active'); }); // 클릭된 항목에 활성 클래스 추가 
		 this.classList.add('active'); }); });
	
	//땐 글릭 시
	/* $(".card-header").find("a").click(function(){
	console.log('gd');
	$(".card-header").find("li").not(this).removeClass("clickTr");
	
	$(this).parent().addClass("clickTr");
	}); */
		// 글자색변경
		/*  $(function(){

		     $(".report-menubar").click(function(){$(this).css("color","red")})

		 }) */
		/* var t = document.getElementsByClassName("report-menubar");
		console.log(t);
		// row 선택 시 event
		for (var i = 0; i < t.length; i++) {
			$(t).click(function(e) {
				console.log('gg');
				tableTrClick(e);
			});
		}

		// row 선택 시 색깔 변경 나머지 원래대로
		function tableTrClick(e) {
			console.log('gd');
			if ($(e.target.parentElement).hasClass("clickTr")) {
				$(e.target.parentElement).removeClass('clickTr');
			} else {
				for (var i = 0; i < t.length; i++) {
					t[i].classList.remove('clickTr');
				}
			}

			$(e.target.parentElement).addClass('clickTr');
		} */
	</script>
	<!--    클릭시 색상 변경 
   <script>
   var hhhh = document.getElementsByClassName("hhhh");

   function handleClick(event) {
     console.log(event.target);
     // console.log(this);
     // 콘솔창을 보면 둘다 동일한 값이 나온다

     console.log(event.target.classList);

     if (event.target.classList[1] === "clicked") {
       event.target.classList.remove("clicked");
     } else {
       for (var i = 0; i < hhhh.length; i++) {
    	   hhhh[i].classList.remove("clicked");
       }

       event.target.classList.add("clicked");
     }
   }

   function init() {
     for (var i = 0; i < hhhh.length; i++) {
    	 hhhh[i].addEventListener("click", handleClick);
     }
   }
   init();
   </script> -->
	<!-- 리스트세팅 -->

	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script>
		 $(document).ready(function() {
			console.log("확인1");
			list(1,1);
			console.log("확인2");
		}); 

		 
	</script>

</body>
<script type="text/javascript">

 

	function close{
   document.querySelector(".report-modal").classList.add("report-modal-hidden");
 }

 document.querySelector(".report-closeBtn").addEventListener("click", close);
 document.querySelector(".report-modal-bg").addEventListener("click", close);
</script>
</html>