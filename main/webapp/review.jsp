<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="description" content="Ogani Template">
<meta name="keywords" content="Ogani, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>냥신사 | 리뷰 쓰기</title>

<!-- favicon -->
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico" />

<!-- google Font -->
<link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

<!-- Css Styles -->

<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
<link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
<link rel="stylesheet" href="css/jquery.rating.css" type="text/css">

</head>

<body>

	<!-- Js Plugins -->
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/jquery.slicknav.js"></script>
	<script src="js/mixitup.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>
	<script src="js/jquery.rating.pack.js"></script>

	<!-- Contact Form Begin -->
	<div class="contact-form spad text-center" >
				<h2><strong>리뷰 쓰기</strong></h2>
		<div class="container">
			<div class="col-lg-6">
				<form action="insertReview.do" method="post">
					<input type="hidden" name="pNum" value="${riview.pNum}">
					<img alt="리뷰쓸 상품 이미지" style="height: 200px; display: block; margin: auto;" src="${riview.pImgUrl}"> <br> <br>
					<b style="font-size: 20px;">상품명 : ${riview.pName}</b> <br> <br>

					<div class="col-lg-6">

						<!-- 별점 주기 -->
						<input name="rRate" type="radio" class="star" value="1" /> <input name="rRate" type="radio" class="star" value="2" /> <input name="rRate" type="radio" class="star" value="3" /> <input name="rRate" type="radio" class="star" value="4" /> <input name="rRate" type="radio" class="star" value="5" /> <br> <br>
					</div>
					<div class="col-lg-6 text-center">
						<textarea name="rContent" placeholder="리뷰 내용을 작성해주세요."></textarea>
						<button type="submit" class="site-btn">올리기</button>
					</div>
				</form>
			</div>
		</div>
	</div>

</body>

</html>