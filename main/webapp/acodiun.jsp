<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="nss" tagdir="/WEB-INF/tags/"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="description" content="Ogani Template">
<meta name="keywords" content="Ogani, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>냥신사 | 홈</title>
<style>
#boardInfo>li {
	display: inline-block;
	margin-right: 20px;
}

#board {
	margin: auto;
	width: 60%;
	height: auto;
	border: 2px solid #6667ab3d;
	border-radius: 30px;
}

#boardDetail {
	display: flex;
	padding: 40px;
	align-items: center;
	flex-direction: column;
}

#title {
	font-size: 33px;
	color: #343a40;
	border-bottom: 1px solid #c3bcbc;
	padding: 20px;
}

#writer {
	font-size: 15px;
	margin-top: 6px;
	float: right;
}

#boardInfo {
	list-style: none;
	padding-bottom: 40px;
}

#content {
	display: flex;
	justify-content: center;
	flex-direction: column;
	align-items: center;
}

.reply {
	display: none;
	margin: 20px auto 40px auto;
	width: 60%;
	height: auto;
	border-radius: 30px;
	background-color: #6667ab21;
	padding-bottom: 40px;
	padding-top: 18px;
 position:relative;
 display:none;
 background-position:30px 8px;
}

#replyDetail {
	display: flex;
	padding-left: 40px;
	padding-right: 40px;
	padding-top: 15px;
	flex-direction: column;
	border-bottom: 1px solid #c3bcbc;
	margin: 0 30px;
}
/* 아코디언 */
.accordion p a {
padding:15px 30px 10px 20px; 
 line-height:26px; 
 color:red;
 display:block;
 position:relative;
 outline:0;
 text-decoration:none;
 background-position:30px center;
 box-sizing:border-box;
 }

#replyContent {
	
}

#replyInfo {
	list-style: none;
	/* border-bottom: 1px solid #c3bcbc; */
	padding-bottom: 10px;
	font-size: 13px;
}

#rereplyDetail {
	display: flex;
	padding-left: 60px;
	padding-right: 40px;
	padding-top: 15px;
	background-color: #6667ab12;
	border-bottom: 1px solid #c3bcbc;
	margin: 0 30px;
	align-items: flex-start;
}

/* 모달창 CSS */
.container {
	width: 100%;
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
</style>

<!-- favicon -->
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico" />

<!-- google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
<link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Humberger Begin -->
	<div class="humberger__menu__overlay"></div>
	<div class="humberger__menu__wrapper">
		<div class="humberger__menu__logo">
			<a href="main.do"> <img src="img/logo.png" alt="홈으로 가기">
			</a>
		</div>
		<div class="humberger__menu__cart">
			<ul>
				<li><a href="shoping_cart.jsp"> <i
						class="fa fa-shopping-bag"></i> <span>${fn:length(cList)}</span>
				</a></li>
			</ul>
		</div>

		<div class="humberger__menu__widget">
			<!-- 로그인 -->
			<nss:login />
		</div>

		<nav class="humberger__menu__nav mobile-menu">
			<ul>
				<li class="active"><a href="main.do">홈</a></li>
				<li><a href="shop.do?category=all&sort=sellDesc">쇼핑</a></li>
				<li><a href="contact.jsp">Contact</a></li>
			</ul>
		</nav>
		<div id="mobile-menu-wrap"></div>
		<div class="header__top__right__social">
			<a href="https://www.facebook.com/profile.php?id=100089405234926">
				<i class="fa fa-facebook"></i>
			</a> <a href="https://www.instagram.com/nyangsinsa5/"> <i
				class="fa fa-instagram"></i>
			</a> <a href="https://twitter.com/nyangsinsa"> <i
				class="fa fa-twitter"></i>
			</a>
		</div>
		<div class="humberger__menu__contact">
			<ul>
				<li><i class="fa fa-envelope"></i>nyangsinsa@gmail.com</li>
				<li>대한민국 최고의 반려묘 용품 쇼핑몰</li>
			</ul>
		</div>
	</div>
	<!-- Humberger End -->

	<!-- Header Section Begin -->
	<header class="header">
		<div class="header__top">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-md-6">
						<div class="header__top__left">
							<ul>
								<li><i class="fa fa-envelope"></i>nyangsinsa@gmail.com</li>
								<li>대한민국 최고의 반려묘 용품 쇼핑몰</li>
							</ul>
						</div>
					</div>
					<div class="col-lg-6 col-md-6">
						<div class="header__top__right">
							<div class="header__top__right__social">
								<a
									href="https://www.facebook.com/profile.php?id=100089405234926">
									<i class="fa fa-facebook"></i>
								</a> <a href="https://www.instagram.com/nyangsinsa5/"> <i
									class="fa fa-instagram"></i>
								</a> <a href="https://twitter.com/nyangsinsa"> <i
									class="fa fa-twitter"></i>
								</a>
							</div>

							<!-- 로그인 -->
							<nss:login />

						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="header__logo">
						<a href="main.do"> <img src="img/logo.png" alt="홈으로 가기">
						</a>
					</div>
				</div>
				<div class="col-lg-6">
					<nav class="header__menu">
						<ul>
							<li class="active"><a href="main.do">홈</a></li>
							<li><a href="shop.do?category=all&sort=sellDesc">쇼핑</a></li>
							<li><a href="contact.jsp">Contact</a></li>
							<li><a href="blog.jsp">자랑해냥</a></li>
						</ul>
					</nav>
				</div>
				<div class="col-lg-3">
					<div class="header__cart">
						<ul>
							<li><a href="shoping_cart.jsp"> <i
									class="fa fa-shopping-bag"></i> <span>${fn:length(cList)}</span>
							</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="humberger__open">
				<i class="fa fa-bars"></i>
			</div>
		</div>
	</header>
	<!-- Header Section End -->




	<!-- Hero Section Begin index는 아래줄 section class="hero" -->
	<section class="hero hero-normal">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="hero__categories">
						<div class="hero__categories__all">
							<i class="fa fa-bars"></i> <span>메뉴</span>
						</div>
						<ul>
							<li><a href="shop.do?category=all">전체</a></li>
							<li><a href="shop.do?category=food">사료</a></li>
							<li><a href="shop.do?category=treat">간식</a></li>
							<li><a href="shop.do?category=sand">모래</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-9">
					<div style="overflow: visible;" class="hero__search">
						<div class="hero__search__form">
							<form action="#">
								<select name="searchCondition">
									<option value="TITLE">제목</option>
									<option value="WRITER">작성자</option>
									<option value="CONTENT">내용</option>
								</select>
								<!-- 글 검색 부분 -->
								<input type="text" name="searchContent" placeholder="궁금한 글 있냥?"
									required>
								<button type="submit" class="site-btn">검색</button>
							</form>
						</div>
						<div class="hero__search__phone">
							<div class="hero__search__phone__icon">
								<i class="fa fa-phone"></i>
							</div>
							<div class="hero__search__phone__text">
								<h5>02-0202-0202</h5>

								<span>상담 가능 시간<br>평일 09:00~18:00
								</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Hero Section End -->


	<div id="board">
		<div id="boardDetail">
			<div id="title">
				2022년 마지막 날인데도 레옹이는 계속 자네요 <br>
				<div id="writer">[작성자 : dlwjddk1010]</div>
			</div>
			<ul id="boardInfo">
				<li><i class="fa fa-calendar-o"></i> 2022/12/31</li>
				<li><i class="fa fa-comment-o"></i> 5</li>
				<li><img style="width: 20px;" src="img/eyes.png"> 13</li>
				<li class="heartVal"><img class="heartImg"
					style="width: 20px; cursor: pointer;" src="img/heart.png"> 20</li>
				<li><img id="reportBtn" style="width: 20px; cursor: pointer;"
					src="img/silen.png"></li>
			</ul>
			<div id="content">
				<img style="width: 70%; height: auto; margin-bottom: 20px;"
					src="img/cat2.jpg" alt="레옹이 사진">
				<div
					style="font-size: 120%; font-weight: bold; letter-spacing: 1px;">
					레옹이는 왜 이렇게 귀여울까... <br> 누워 있어도 귀엽고 그냥 귀엽고 <br> 아무리 봐도 귀엽고
					<br> 너무 귀엽지 않나요 여러분 <br> 이달의 냥냥이 1등 할 수 있도록 좋아요 많이
					눌러주세용!!
				</div>
			</div>
		</div>
	</div>


<div class="accordion_wrap" style="border:1px solid; width:100%;">
	<div class="accordion">                        	
		<section id="one">
			<button id="showReply"
		style="cursor: pointer; border: 2px solid #6667ab9c; width: 110px; margin-left: 20%; margin-top: 20px; padding: 5px;">
		<img style="width: 20px;" src="img/replyicon.png"> 댓글 (5) ▼
	</button>
	
			<div class="reply">
		<div id="replyDetail">
			<div
		
				style="font-size: 15px; float: left; margin-bottom: 10px; font-weight: bold;">[작성자
				: dlwjddk1010]</div>
			<div id="replyContent">
				<div style="font-size: 15px;" id="replyContent">어머 너무 귀엽다...</div>
			</div>
			<ul style="font-size: 13px;" id="replyInfo">
				<li><i class="fa fa-calendar-o"></i> 2022/12/31</li>
			</ul>
		</div>
		<!-- 		<hr style="width: 95%">
 -->
		<div id="rereplyDetail">
			<img style="width: 20px;" src="img/rereply.png">
			<div style="margin-left: 10px;">
				<div
					style="font-size: 15px; float: left; margin-bottom: 10px; font-weight: bold;">[작성자
					: hyerin00]</div>
				<div id="replyContent">
					<div style="font-size: 15px;" id="replyContent">very
						cuuuuuute</div>
				</div>
				<ul style="font-size: 13px;" id="replyInfo">
					<li><i class="fa fa-calendar-o"></i> 2023/01/01</li>
				</ul>
			</div>
		</div>
		<div id="rereplyDetail">
			<img style="width: 20px;" src="img/rereply.png">
			<div style="margin-left: 10px;">
				<div
					style="font-size: 15px; float: left; margin-bottom: 10px; font-weight: bold;">[작성자
					: moonyong]</div>
				<div id="replyContent">
					<div style="font-size: 15px;" id="replyContent">왕 귀엽네여</div>
				</div>
				<ul style="font-size: 13px;" id="replyInfo">
					<li><i class="fa fa-calendar-o"></i> 2022/01/02</li>
				</ul>
			</div>
		</div>
		<div id="replyDetail">
			<div
				style="font-size: 15px; float: left; margin-bottom: 10px; font-weight: bold;">[작성자
				: joonyoung]</div>
			<div id="replyContent">
				<div style="font-size: 15px;" id="replyContent">저희 고양이가 더
					귀여운디요</div>
			</div>
			<ul style="font-size: 13px;" id="replyInfo">
				<li><i class="fa fa-calendar-o"></i> 2022/01/03</li>
			</ul>
		</div>
		<div id="rereplyDetail">
			<img style="width: 20px;" src="img/rereply.png">
			<div style="margin-left: 10px;">
				<div
					style="font-size: 15px; float: left; margin-bottom: 10px; font-weight: bold;">[작성자
					: moonyong]</div>
				<div id="replyContent">
					<div style="font-size: 15px;" id="replyContent">왕 귀엽네여</div>
				</div>
				<ul style="font-size: 13px;" id="replyInfo">
					<li><i class="fa fa-calendar-o"></i> 2022/01/02</li>
				</ul>
			</div>
		</div>
	</div>
	
		</section>			
		                        
	</div>
</div>








	<!-- 	<!-- Related Blog Section Begin -->
	<!-- 	<section class="related-blog spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title related-blog-title">
						<h2>댓글</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-6">
					<div class="blog__item">
						<div class="blog__item__pic">
							<img src="img/blog/blog-1.jpg" alt="">
						</div>
						<div class="blog__item__text">
							<ul>
								<li><i class="fa fa-calendar-o"></i> May 4,2019</li>
								<li><i class="fa fa-comment-o"></i> 5</li>
							</ul>
							<h5>
								<a href="#">Cooking tips make cooking simple</a>
							</h5>
							<p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6">
					<div class="blog__item">
						<div class="blog__item__pic">
							<img src="img/blog/blog-2.jpg" alt="">
						</div>
						<div class="blog__item__text">
							<ul>
								<li><i class="fa fa-calendar-o"></i> May 4,2019</li>
								<li><i class="fa fa-comment-o"></i> 5</li>
							</ul>
							<h5>
								<a href="#">6 ways to prepare breakfast for 30</a>
							</h5>
							<p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6">
					<div class="blog__item">
						<div class="blog__item__pic">
							<img src="img/blog/blog-3.jpg" alt="">
						</div>
						<div class="blog__item__text">
							<ul>
								<li><i class="fa fa-calendar-o"></i> May 4,2019</li>
								<li><i class="fa fa-comment-o"></i> 5</li>
							</ul>
							<h5>
								<a href="#">Visit the clean farm in the US</a>
							</h5>
							<p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	Related Blog Section End -->






	<!-- Footer Section Begin -->
	<footer class="footer spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-6">
					<div class="footer__about">
						<div class="footer__about__logo">
							<a href="main.do"> <img src="img/logo.png" alt="로고">
							</a>
						</div>

					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6">
					<div class="footer__widget">
						<ul>
							<li>주소: 서울 강남구 역삼동 골목길</li>
							<li>전화: +82 02-0202-0202</li>
							<li>이메일: nyangsinsa@gmail.com</li>
						</ul>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6">
					<div class="footer__widget">
						<div class="footer__widget__social">
							<a href="https://www.facebook.com/profile.php?id=100089405234926">
								<i class="fa fa-facebook"></i>
							</a> <a href="https://www.instagram.com/nyangsinsa5/"> <i
								class="fa fa-instagram"></i>
							</a> <a href="https://twitter.com/nyangsinsa"> <i
								class="fa fa-twitter"></i>
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="footer__copyright">
						<div class="footer__copyright__text">
							<p>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright 냥신사&copy;
								<script>
									document.write(new Date().getFullYear());
								</script>
								All rights reserved | This template is made with <i
									class="fa fa-heart" aria-hidden="true"></i> by <a
									href="https://colorlib.com" target="_blank">Colorlib</a>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							</p>
						</div>
						<div class="footer__copyright__payment">
							<img src="img/payment-item.png" alt="결제수단">
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- Footer Section End -->


	<!--  신고하기 모달창  -->

	<div class="container">
		<div class="modal-btn-box">
			<button type="button" id="modal-open">신고하기</button>
		</div>

		<div class="popup-wrap" id="popup">
			<div class="popup">
				<div class="popup-head">
					<span class="head-title"> 신고하기</span>
				</div>
				<div class="popup-body">
					<div class="body-content">
						<div class="body-titlebox">
							<h2 style="font-size:25px;">신고 사유를 선택해주세요.</h2>
						</div>
						<div class="body-contentbox">
							<div style="width: 300px;">
								<form action="main.do?aa=radio" class="report-box">
									<input type="radio" class="report-box2" name="radio" id="r1"
										value="욕설"><label for="r1">욕설/부적절한 언어 입니다.</label><br>
									<input type="radio" class="report-box2" name="radio" id="r2"
										value="스팸/도배"><label for="r2">스팸광고/도배글 입니다.</label><br>
									<input type="radio" class="report-box2" name="radio" id="r2"
										value="부적합컨텐츠"><label for="r2">부적절한 컨텐츠 입니다.</label><br>
									<input type="radio" class="report-box2" name="radio" id="r2"
										value="음란성게시물"><label for="r2">음란성 게시물 입니다.</label><br>
									<input type="radio" class="report-box2" name="radio" id="r2"
										value="1"><label for="r2">기타</label><br> <input
										type="text" class="report-box2 report-text" name="text"
										disabled placeholder="사유를 작성해주세요.">
							</div>

						</div>


					</div>
				</div>
				<div class="popup-foot">

					<input type="submit" class="pop-btn2" value="신고하기" id="close">
					</form>
					<span class="pop-btn modal-close" id="close2">창 닫기</span>
				</div>
			</div>
		</div>
	</div>
	<!--  신고하기 모달창 Scripte  -->
	<script	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script>
	
	$(function(){
		  $("#confirm").click(function(){
		      modalClose();
		      //컨펌 이벤트 처리
		  });
		  $("#reportBtn").click(function(){        $("#popup").css('display','flex').hide().fadeIn();
		  });
		  $("#modal-close").click(function(){
		      modalClose();
		  });
		  $("#close2").click(function(){
		      modalClose();
		  });
		  function modalClose(){
		    $("#popup").fadeOut();
		  }
		});
	
	$(document).ready(function(){
		 
	    // 라디오버튼 클릭시 이벤트 발생
	    $("input:radio[name=radio]").click(function(){
	 
	        if($("input[name=radio]:checked").val() == "1"){
	            $("input:text[name=text]").attr("disabled",false);
	            // radio 버튼의 value 값이 1이라면 활성화
	 
	        }else if($("input[name=radio]:checked").val() == "0"){
	              $("input:text[name=text]").attr("disabled",true);
	            // radio 버튼의 value 값이 0이라면 비활성화
	        }
	    });
	});
</script>
	
	<!-- Js Plugins -->
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/jquery.slicknav.js"></script>
	<script src="js/mixitup.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.3.min.js"
		integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU="
		crossorigin="anonymous"></script>

	<script type="text/javascript">
		var heart = document.getElementsByClassName("heartImg");
		for (var i = 0; i < heart.length; i++) {
			heart[i].addEventListener('click', function() {
				if (this.getAttribute("src") == "img/fullheart.png") {
					this.src = "img/heart.png";
				} else {
					console.log(i);
					this.src = "img/fullheart.png";
				}
			})
		}
	</script>
	
	
	
	
	
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>


$(document).ready(function() {    
var accordion_tab = $('.accordion button'), accordion_content = $('.reply');
	//accordion p tag click
	accordion_tab.on('click', function(e){
		//tab link 비활성화
		e.preventDefault();
		//활성화 된 class 제거
		accordion_tab.removeClass('active');
		//accordion div 내용 숨기기
		accordion_content.slideUp('normal');
		//tab이 숨겨져 있으면 활성화 시키고 div 내용 펼치기
		if($(this).next().is(':hidden') == true) {
			$(this).addClass('active');
			$(this).next().slideDown('normal');
		 } 			  
 });
});
</script>
	
	
	
	
</body>

</html>